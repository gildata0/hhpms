object sms_f: Tsms_f
  Left = 389
  Top = 56
  Caption = 'sms_f'
  ClientHeight = 669
  ClientWidth = 1167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsms: TPanel
    Left = 0
    Top = 0
    Width = 151
    Height = 669
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnlsms'
    Color = clWhite
    TabOrder = 0
    object pnlsch: TPanel
      Left = 0
      Top = 229
      Width = 151
      Height = 440
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlsch'
      Color = clWhite
      TabOrder = 0
      object Label51: TLabel
        Left = 26
        Top = 79
        Width = 24
        Height = 12
        Caption = #51312#44148
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object Label48: TLabel
        Left = 26
        Top = 124
        Width = 24
        Height = 12
        Caption = #51060#47492
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object Label49: TLabel
        Left = 25
        Top = 146
        Width = 66
        Height = 12
        Caption = #44160#49353' '#49884#51089#51068
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object Label50: TLabel
        Left = 25
        Top = 186
        Width = 78
        Height = 12
        Caption = #44160#49353' '#47560#51648#47561#51068
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 27
        Top = 128
        Width = 66
        Height = 12
        Caption = #45208#51060'      ~'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 15
        Top = 14
        Width = 12
        Height = 12
        Caption = #54016
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label10: TLabel
        Left = 27
        Top = 146
        Width = 48
        Height = 12
        Caption = #54872#51088#44396#48516
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object cbGubun: TAdvComboBox
        Left = 54
        Top = 159
        Width = 79
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 11
        Text = #50500#45768#50724
      end
      object EdtDPSch: TEdit
        Left = 54
        Top = 122
        Width = 79
        Height = 16
        AutoSize = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'EdtDPSch'
      end
      object cbNew: TCheckBox
        Left = 30
        Top = 50
        Width = 87
        Height = 17
        Caption = #49352#47196#44160#49353
        TabOrder = 5
      end
      object EdtNai1: TEdit
        Left = 58
        Top = 123
        Width = 27
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 6
        Text = '0'
      end
      object EdtNai2: TEdit
        Left = 100
        Top = 123
        Width = 33
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 7
        Text = '99'
      end
      object cbDoc: TComboBox
        Left = 35
        Top = 8
        Width = 79
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 8
        Visible = False
        OnChange = cbDocChange
      end
      object cbTeam: TComboBox
        Left = 108
        Top = 9
        Width = 38
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        ParentFont = False
        TabOrder = 9
        Text = '1'
        Visible = False
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
      end
      object cbChair: TCheckBox
        Left = 22
        Top = 270
        Width = 123
        Height = 17
        Caption = #44396#44036'('#52404#50612')'#51648#51221
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = cbChairClick
      end
      object cbExcept: TCheckBox
        Left = 29
        Top = 99
        Width = 97
        Height = 17
        Caption = #51221#44592#44160#51652' '#51228#50808
        TabOrder = 12
      end
      object cbNaiAll: TCheckBox
        Left = 29
        Top = 102
        Width = 99
        Height = 17
        Caption = #45236#50896#51204#52404'('#45208#51060')'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = cbNaiAllClick
      end
      object BtnDSch2: TButton
        Left = 26
        Top = 20
        Width = 107
        Height = 24
        Caption = #44160#49353
        TabOrder = 0
        OnClick = BtnDSch2Click
      end
      object wcDSchKind: TComboBox
        Left = 59
        Top = 75
        Width = 79
        Height = 21
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ItemIndex = 0
        TabOrder = 1
        Text = #51204#52404
        OnChange = wcDSchKindChange
        Items.Strings = (
          #51204#52404
          #51060#47492
          #47532#53084
          #50696#50557
          #49548#50500
          #49373#51068
          #51652#47308
          #52572#52488#45236#50896
          #52572#51333#45236#50896
          #50696#50557#48120#45236#50896
          #45208#51060
          #54872#51088#44396#48516
          #50696#50557#45236#50669
          #52264#53944#48264#54840)
      end
      object cbKind: TComboBox
        Left = 24
        Top = 100
        Width = 117
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 13
        Visible = False
        Items.Strings = (
          ''
          #48372#52384' '#47532#53084
          #51076#54540#46976#53944'('#50756#47308#54980') '#47532#53084
          #51076#54540#46976#53944'(1'#52264#49688#49696#54980'-'#54616#50501') '#47532#53084
          #51076#54540#46976#53944'(1'#52264#49688#49696#54980'-'#49345#50501') '#47532#53084
          #48120#48177' '#47532#53084
          #49892#47088#53944' '#47532#53084
          #52824#51452'('#49688#49696#54980' '#49345#53468') '#47532#53084
          #52824#51452' '#47532#53084
          '1'#44060#50900' R/C'
          '2'#44060#50900' R/C'
          '3'#44060#50900' R/C'
          '6'#44060#50900' R/C')
      end
      object CbDYeyakFind: TDateTimePicker
        Left = 54
        Top = 160
        Width = 79
        Height = 18
        BevelInner = bvNone
        BevelOuter = bvNone
        Date = 37884.000000000000000000
        Time = 0.711620335598127000
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        TabOrder = 3
      end
      object CbDYeyakFind2: TDateTimePicker
        Left = 54
        Top = 200
        Width = 79
        Height = 18
        Date = 37884.000000000000000000
        Time = 0.712201574096980000
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        TabOrder = 4
      end
      object GrdChair: TAdvStringGrid
        Left = 15
        Top = 290
        Width = 136
        Height = 161
        Cursor = crDefault
        DrawingStyle = gdsClassic
        FixedCols = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 15
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          #49440#53469
          #44396#44036'('#52404#50612')'
          'No')
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
        FixedColWidth = 33
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
        Version = '8.4.4.1'
        ColWidths = (
          33
          60
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
    object pnlSmsMenu: TPanel
      Left = 0
      Top = 0
      Width = 151
      Height = 229
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnlSmsMenu'
      Color = clWhite
      TabOrder = 1
      object Image3: TImage
        Left = 4
        Top = 3
        Width = 140
        Height = 228
        AutoSize = True
        Picture.Data = {
          0A544A504547496D61676509170000FFD8FFE000104A46494600010101006000
          600000FFE100164578696600004D4D002A00000008000000000000FFDB004300
          0201010201010202020202020202030503030303030604040305070607070706
          070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0C
          FFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0CFFC000110800E4008C03012200021101031101FFC4001F00000105
          01010101010100000000000000000102030405060708090A0BFFC400B5100002
          010303020403050504040000017D010203000411051221314106135161072271
          14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
          3435363738393A434445464748494A535455565758595A636465666768696A73
          7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
          AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
          E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
          0000000000000102030405060708090A0BFFC400B51100020102040403040705
          040400010277000102031104052131061241510761711322328108144291A1B1
          C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
          434445464748494A535455565758595A636465666768696A737475767778797A
          82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
          B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
          F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD6CF80BF01BC25E30F8
          2FE15D5759F09E8BAC5F6A1A65B5E5E5E5D69F6F35D5D5C4A9BE4B891C7FAC92
          4F324F325FF59279873E67995E85FF000C89F0EFFE851F0E7FE0AEDFFF008DD3
          7F64B9B3FB39F82FFEC0FA7FFE93475DF36AF0C52F96CFFBCFEE52C4623D8FC6
          2A74F9CE17FE191BE1CFFD09BE1BFF00C15DBFFF001BA7FF00C323FC39FF00A1
          37C37FF82BB6FF00E22BD1629BCF8B7A5494FDA93ECD1E6DFF000C8FF0E7FE84
          DF0DFF00E0AEDBFF0088A3FE191FE1CFFD09BE1BFF00C15DB7FF00115E93451E
          D43D9A3CDBFE191FE1CFFD09BE1BFF00C15DB7FF001147FC323FC39FFA137C37
          FF0082BB6FFE22BD268A3DA87B3479B7FC323FC39FFA137C37FF0082BB6FFE22
          97FE1933E1EFFD09FE1BFF00C15DB7FF001BAF48A28F6A1ECD1E6DFF000C8FF0
          E7FE84DF0DFF00E0AEDBFF0088A67FC3237C39FF00A137C37FF82BB7FF00E375
          E99451ED03D9A3CCFF00E191BE1CFF00D09BE1BFFC15DBFF00F1BA3FE191BE1C
          FF00D09BE1BFFC15DBFF00F1BAF4CA2AFDA317B34799FF00C3237C39FF00A137
          C37FF82BB7FF00E3747FC3237C39FF00A137C37FF82BB7FF00E375E994547B50
          F668F2F97F640F87247FC89DE1B93FEBA6976FFF00C6EBE27FF8283E9307C39F
          8CBA5E97A0CD3681631E8C8DF65D3A28EDADCB1B9B9CB04ED9E3F2AFD24AFCDE
          FF00829D7FC9C359FF00D81A3FFD29B9AD29FBE150FB47F65187CEFD9C3C1F1F
          FD41F4FF00FD268AB9DF8EFF0002F5CF89DF14BC13AC695AC36910786E3BB173
          2239FB4CBE6F95D23FF547FD5FFCB4FF009E95D37EC99FF26E5E0BFF00B03D9F
          FE93475D91F14E936B2491CFA969F1C9FDC7B88C571E330FEDA13A67461EA727
          BE6A58DABDB45B649BCCFAD5AAC9FF0084CF47FF00A0B69BFF008129FE347FC2
          67A3FF00D05B4DFF00C094FF001AE85B199AD4564FFC267A3FFD05B4DFFC094F
          F1A3FE133D1FFE82DA6FFE04A7F8D006B51593FF00099E8FFF00416D37FF0002
          53FC68FF0084CF47FF00A0B69BFF008129FE3401AD4564FF00C267A3FF00D05B
          4DFF00C094FF001A3FE133D1FF00E82DA6FF00E04A7F8D006B51593FF099E8FF
          00F416D37FF0253FC68FF84CF47FFA0B69BFF8129FE3401AD4564FFC267A3FFD
          05B4DFFC094FF1A3FE133D1FFE82DA6FFE04A7F8D006B51593FF00099E8FFF00
          416D37FF000253FC68FF0084CF47FF00A0B69BFF008129FE3401A55F9BDFF053
          AFF9386B3FFB0347FF00A53735FA3367A95AEA5FEA268E4FF72BF39BFE0A75FF
          00270D67FF006068FF00F4A6E6B4A66750FB47F656FF00936EF05FFD81F4FF00
          FD278EBD2230E64AF35FD94CFF00C637F83FFEC0765FFA471573FF001AFE3BEB
          9F0CFE2D782F47D37449B57B3F118BCFB66CFF005B0F97F67FFB67FF002D2B8F
          30C6430DEF9BE1F0F3AC7B9447CD8A9DB2AA69BFF1EC9FEB3FE0756E33554E5C
          F0E7206D494515B011D1E4549450045E4FFD74FF00BEE97FEFE5494500145145
          0014514500151CD179D1D49450057F27CA92BF38BFE0A75FF270D67FF6068FFF
          004A6E6BF486BF37BFE0A75FF270D67FF6068FFF004A6E6B4A66750FB47F6519
          7CAFD9BBC1F27EEFFE40F67FEB3FEBDA3AF403A74777731C9B3FD57FABCA5705
          FB25FF00C9B7F82FFEC0DA7FFE93455DC5DDBDF07FDDDD597FC0ECE493FF006A
          56555539FF0010D3DF81AB054958FE56B1FF003FD63FF82F93FF008E5440EA92
          3C6FF68B1FDE7FD3849C7FE44ACFE003768AC6FF0089A23FFC7C58FE1A7C9FFC
          7297FE271FF3F763FF0080127FF1CAD40D8A2B1CC5AA4A3FE3EEC7FF0005F27F
          F1CA7797AAFF00CFE69FFF0080127FF1CA00D6A2B2FECDAC7FCFD69BFF008092
          7FF1CA3ECDAC7FCFD69BFF0080927FF1CA00D4A2B2BECBACFF00CFEE9DFF0080
          6FFF00C728FB2EB3FF003FBA77FE01BFFF001CA00D5A2B2FECDAC7FCFD69BFF8
          0927FF001CA3ECDAC7FCFD69BFF80927FF001CA00D4A2B1FC8D67FE7FB4FFF00
          C0093FF8E53BECDAB7FCFE69FF00F80727FF001DA00D2F3EBF37BFE0A75FF270
          D67FF6068FFF004A6E6BF4423B3BB8963F32E2393FEB9C727FF1CAFCEFFF0082
          9D7FC9C359FF00D81A3FFD29B9AD2999D43ED5FD933FE4DCFC17FF00607B3FFD
          268EB5BC55F17B41F0578BB47D1F52D4ADACEFB5E12FD82393FE5B7978F33F79
          FF006D23AC9FD92E1F3BF673F05FFD81ECFF00F49E3A87E267ECEDA6FC59F1BE
          81AB6B1F68964F0EFDA3ECF079FF00E8D2F9924727EF23FF00B671D79D9AD3A9
          C93FAB9D187E4FF9787A559CC93F9924727995698616A9E9368D6713249EBC55
          C6395ADE8F3F22F69B932DF41D451456C4851451400514514005145140051451
          4005145364FB86801B3D7E6F7FC14EBFE4E1ACFF00EC0D1FFE94DCD7E90D7E6F
          7FC14EBFE4E1ACFF00EC0D1FFE94DCD694CCEA1F6CFEC8BFF26D9E0FFF00B03D
          9FFE93475D936B17424DBFD977B247EA9247FF00C72B89FD94AE7CBFD9C3C167
          6FFCC1B4FF00FD268EBD1965691C0DA78F7EB59CA3676922A12562A0D66EFF00
          E80FA97FDF76FF00FC72A2BBD7EEA18FCCFECBD4A38E3E5FE7B7FF00E395AD0B
          6F8D71DAA4A57451870F88E7FB4F97FD9B7DE67FCF3F32DFFF008E53E7F115D4
          439D27528FFEDA5BFF00F1CAD5CD494C0C7875EBAFB8FA56A5E67FD74B7FFE39
          4F975DBA11FF00C81F52FF00BF96FF00FC72B4FCCA5C9F4A00C31E2798BFFC83
          7521FEF9B7FF00E394FF00EDBBA1F7F4DBEF2FEB6FFF00C72B637FB37E5479AB
          EB4018B79E299E11FF0020DBE8FF00EDA5BFFF001CA7FF00C2473C3F7F4DD47F
          EFE5BFFF001CAD9A2803166F144F11D9FD95A9799FEFDBFF00F1CA58B5CBA23F
          E417A97E76FF00FC72B668A00C79B57BA97FE615A97FDFCB7FFE3940D52EA2FF
          00983EA5FF007F2DFF00F8E56C534B7CB903340197A5CB2490EE9ED65B7FFAE9
          247FFB4EBF3C3FE0A75FF270D67FF6068FFF004A6E6BF47CB156C63F5AFCE0FF
          00829D7FC9C359FF00D81A3FFD29B9AD2999D6D763ECFF00D94CFF00C637F83F
          FEC09658FF00C0388D677C5EFDA660F83FF12FC29A1DD58DF5DC7E2A17389605
          2C60F2FC8FF967F7FF00E5A7AD6A7EC9E71FB37F83DBCBF307F63D98EBB7FE5D
          A315D7DFF83B4DD6F59B3BC9ACECE7B8D3F77D9E578C33C7BB6EEDA48C8CED5C
          E3AED1E82B8334A75EA2B517A9D5849528FC7A9B1A6CBBED97F79E67BE315690
          E69B02F15262B5A3750E57B988628A28AD803145145001451450014514500145
          14500145145004679AFCDEFF00829D7FC9C359FF00D81A3FFD29B9AFD21F357D
          2BF37BFE0A75FF00270D67FF006068FF00F4A6E6B4A66750FB4FF64E8D64FD9B
          BC16195581D1AC3A8FFA768ABBABA9F50B76C2C362D8FEFDEB47FCA3AE1FF64C
          FF009372F05FFD81ECBFF49A3AEB351F1758E93AED9D8DC5E5BC3797C1BECB0C
          B2859AE36E77E17A1C653F3AE4C4623D826E7A58D234D4FE045C1A96AC3FE5CF
          49FF00C0E6FF00E3751FF6CEA0F2237D974FDB274FF4F7FF00E375A504A58BB7
          99BD7D8D582BB507FB3577535CD007A191FDAFA823FF00C7AE9FFF0081EDFF00
          C6E97FB6354FF9F3D37FF039BFF8DD6C515A018E752D4A4E96DA6FFE07B7FF00
          1BA77F686A9FF3E9A6FF00E07B7FF1AAD6A3140197F6CD5BFE7C2C7FF039BFF8
          DD1F6CD5BFE7C2C7FF00039BFF008DD6A5140195F6DD63FE7C74FF00FC0D6FFE
          3547DB758FF9F1D3FF00F035BFF8D56AD140197F6CD5BFE7C2C7FF00039BFF00
          8DD1F6CD5BFE7C2C7FF039BFF8DD6A514018FF00DA5ABFFCF9E97FF81EDFFC6E
          9FF6BD5BFE7CEC3FF039BFF8D56AD18A00CA46BE8C279CB0C7F49F77FED3AFCE
          FF00F829D7FC9C359FFD81A3FF00D29B9AFD2197E4E9C7D2BF37BFE0A75FF270
          D67FF6068FFF004A6E6B4A66750FB57F64C8CC9FB39F82F1FF00407B3FFD268E
          B0FE337ECDDFF0B8FE24784F58B8BCB9B38FC2FF006AC5BC512A9B9F32489BE5
          987CC9F2C20707A31AE83F645FF936DF07FB68F67FFA4D1D764FE23B78E6DAF0
          DFAE7F8859CAD9FF00C73D87E55CB8CA0B129C64B737A15250F84B3A25B35B40
          CAEBB4E7D2AFB1CAD65FFC2536E7FE58EA5FF82EB8FF00E269B3F8B208D54AC7
          A82A0FBC5B4EB8E3FF001CAAA74D423CB1264EE6C5158F178B21327FABD43FDD
          FB04FBBFF41A593C5F6EA388F501FEF69D71FF00C4D68235E8AC887C5B0BA7CD
          1EA0ADE9FD9D71FF00C453E4F165B84FF55A97FE0BAE3FF88A00D4A2B157C656
          CEFC7DB1BFEE1F703FF65A70F14C6C70D1DE05F5FB0DC7FF0013401B14563DC7
          8BE08FEEC77E3FDED3E7FF00E269CBE2B817EF2DF0FF00B875C7FF0013401AD4
          564C9E31B58C60A6A1BBD3FB3AE3FF0088A6C7E2D808FBB7DFF82FB8FF00E228
          03629AE7086B2A6F13C4C3E58F521F4D3AE3FF0089A41E26853EF47A9B7FDC3A
          E3FF0089A00D43CD7E6F7FC14EBFE4E1ACFF00EC0D1FFE94DCD7E88E957FF6E8
          F76DBA8FFEBA42F17FE875F9DDFF00053AFF009386B3FF00B0347FFA53735A53
          33ABA1F6B7ECA171E5FECDFE0B2AB9CE8D61903DEDE2AF4532EDDB85DBBBE833
          FAD79AFECAF3793FB37782E4FF00A83E9FFF00A4D1D666B7FB49DBF86BF68AB4
          F00CD637923DF69F1DF47769FBC114925C5C47E59FFBF55C39862950D8DB0B4E
          551687B0C733103E53FF007D0A5936CA8CAD10656EA0E0834CB4FF00551D4E5B
          02B6A52735CC26ADB908B48C4BE6792BE67F7B68CFE74F74593EF47BBEA05494
          568219B46EDDE5FCDEB814A4E47DD3FA53A8A0088C11B1E6153FF0114A515860
          C7C7A6054945004325A432FDEB746FAA834E68637FBD0AB7D40A928A008DA18D
          9F71854B7A90334E1C7F07F2A751400DF97FBBFCA867C7F0B7E94EA2802BBFF0
          A88D591BD78C7E18AFCE2FF829D7FC9C359FFD81A3FF00D29B9AFD21AFCDEFF8
          29D7FC9C359FFD81A3FF00D29B9AD2999D4D4FB57F64CFF9372F05FF00D81ECF
          FF0049A3AEAA3F07D8B788FF00B50DA5AFF687D9FECFF6AF2FF7BE58FF00967F
          FA32B95FD937FE4DA7C1FF00F607B3FF00D268EBB23A7CCF3FC9AA5F5AFF00D3
          34F2CFFE871D73E22942A7C669ED0DE1C5158FFD8F77FF00418D4BFEFDDB7FF1
          BA93FB0AEFFE831A97FDFBB7FF00E375A01A94565FF615DFFD06352FFBF76FFF
          00C6E8FEC2BBFF00A0C6A5FF007EEDFF00F8DD006A51597FD8577FF418D4BFEF
          DDBFFF001BA4FEC6BBFF00A0C6A5FF007EEDFF00F8DD006AD1595FD8975FF418
          D4FF00EF9B7FFE3747F625D7FD06353FFBE6DFFF008DD006AD1597FD8577FF00
          418D4BFEFDDBFF00F1BA3FB0AEFF00E831A97FDFBB7FFE37401A94565FF615DF
          FD06352FFBF76FFF00C6E8FEC2BBFF00A0C6A5FF007EEDFF00F8DD006A51597F
          D8577FF418D4BFEFDDBFFF001BA49743BA31FF00C86352FF00BF76FF00FC6E80
          346BF37BFE0A75FF00270D67FF006068FF00F4A6E6BF4434EB47B31E5C97535C
          FF00BFE5D7E77FFC14EBFE4E1ACFFEC0D1FF00E94DCD694CCEB9F6AFEC99FF00
          26CBE0FF00F969FF00123B3FFD268EB5BC59F18340F04F8B74BD0F52BEB6B2BC
          D7BED1FD9F1C9FF2D7CBF2FCCFFD19593FB266DFF8666F076FFF00A01D9FFE93
          4749F13FF676D0FE29F8DFC3FAC6A90497327877ED1F6783FE5DA5F33CBFF59F
          F80F1D79398FB7E4FF00673A307C9FF2F0F49B46F362AB0060555B28921B64F2
          D7CB4F4AB40E457651E7E4FDE198514515B00514514005145140051451400514
          668A0028A28A008EBF37BFE0A75FF270D67FF6068FFF004A6E6BF486BF37BFE0
          A75FF270D67FF6068FFF004A6E6B4A66750FB67F63EFF936DF05FF00D81ECFFF
          0049E3AF48F263FEEA579BFEC7DFF26DBE0BFF00B03D9FFE93C75E9959853D82
          8A28A0D028A28A0028A28A0028A28A0028A28A008C9E698932B2E77F1EB55A65
          36F6F2FCFE66413FA57E2EFC04F8F1E3E8BF628FD8D7E3837C46F8917DF11BE2
          B7C7283C33E2B9EEFC51A8DCE91AA69F79AAEAB6F716FF00D97249FD9D6F1F97
          1C7E5F956D1F97E5C7E5F975E9E5B92D4C6D1A98884B484A30F9CE3392F97B8E
          FF00226A4F90FDAE9A6F2A2DF55BFB5E169648E3FDE491F5095CA7C53FECFF00
          F856FAFF00F6F6A1FD8FA17F665C1D56FA3D4E5D34D8DB7967CC93ED91C91C96
          C638CB9F363923F2F1E67991F5AFCB1F8A9E29F89138FDA1FE2EFECF7E2BF177
          883E01F84FE126B9E188F57F147C4FD77ECB7FAFC5F69B9BDD7BC3F249F6D92E
          3EC51DBC76F1C9E65BC7249E6F9771FEB2593CC28FD798758B7BAB9F2564FDE6
          3EE57E73FF00C14EBFE4E1ACFF00EC0D1FFE94DCD7D53FF04F1D5EF75EFD867E
          0A6ABAE5F6A5AC6BBAAF81343B8BCBDD4E6796FAEAE1F4EB632492799FBCF324
          FF0059266BE57FF829EA6CFDA26CC7FD41E3FF00D29B9AD2999D43ED8FD90BFE
          4DC7C17FF607B3FF00D268EBD32BC1FE0CFC4693E117C2CD07C37A9F87FC60DA
          A689A75B5A5E470F86B51B88A0748423949A280C5365D58FEE8F461EB5D67FC3
          475AFF00D003C6DFF8496ADFFC8F4AA6E14F63D328AF33FF00868EB5FF00A007
          8DBFF092D5BFF91E8FF868EB5FFA0078DBFF00092D5BFF0091EA3D99A1E99457
          9AFF00C34459FF00D00FC71FF849EADFFC8F517FC3475B7FD003C6FF00F8496A
          DFFC8F55CAC0F4FA2BCC7FE1A2AD7FE801E36FFC24F56FFE3147FC3455AFFD00
          3C6DFF00849EADFF00C62A7D981E9D45798FFC3455AFFD003C6DFF00849EADFF
          00C628FF00868FB6FF00A17FC6DFF8496ADFFC62803D3A83D2BCC3FE1A2AD7FE
          803E36FF00C24F56FF00E47A3FE1A2AD7FE803E36FFC24F56FFE47AAE503D25E
          1CAD7E7CFC30FF00822E6A5F0F7C17F06BE1EEA1F13ECB52F853F037C77FF09D
          E8161078664B5F105D5C25CDEDCDB5BDE6A1F6C92DE48E396EFF0079E5D947E6
          471FFCB3AFAEBFE1A22DBFE85FF1B7FE127AB7FF0023D3FF00E1A26D7FE803E3
          6FFC24F56FFE47AE8C16618BC2C250A3EEA97E6B9A29FF00E4D2FBC89F24BE23
          D0757B41A8E9F243FBC1FEE57C7BF09BF61DFDA0BE177ECE96FF000D754F8E9F
          0F7E25E951C5736D737DE3BF879AA6B9AA6B16F717124925BDDDC49AFF00EF23
          F2E4FB3FFABFF571D7D09FF0D176BFF401F1B7FE127AB7FF0023D37FE1A2AD7F
          E801E36FFC24F56FFE315CBECCB343E1278147C32F03683A1FD9F45B56D0B4CB
          4D38268F61FD9BA5A795108FFD1AD3CC97ECD17FCF38BCC93CB8C247E657C2BF
          F05439BFE3232CFF00EC0D1FFE94DCD7DB09FB44D889C2B681E38556FBEC3C23
          AB9FFDA15F31FED83F02FC43FB467C50B5D7B49D07C409690E9D1DA627D2EE62
          7DC249643F2BC39FF969574E9A3399F765145150681451450014514500145145
          0014514500145145001451450014514500145145007FFFD9}
        Stretch = True
      end
      object lblLogin: TLabel
        Left = 29
        Top = 15
        Width = 45
        Height = 13
        Cursor = crHandPoint
        Caption = #47196#44536#51064
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 2302755
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lblLoginClick
        OnMouseEnter = lblLoginMouseEnter
        OnMouseLeave = lblLoginMouseLeave
      end
      object lblViewSendMessage: TLabel
        Tag = 2
        Left = 30
        Top = 70
        Width = 98
        Height = 13
        Cursor = crHandPoint
        Caption = #48372#45240' '#47700#49884#51648#54632
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 2302755
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lblViewSendMessageClick
        OnMouseEnter = lblLoginMouseEnter
        OnMouseLeave = lblLoginMouseLeave
      end
      object lblViewReservMessage: TLabel
        Tag = 3
        Left = 30
        Top = 99
        Width = 98
        Height = 13
        Cursor = crHandPoint
        Caption = #50696#50557' '#47700#49884#51648#54632
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 2302755
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lblViewReservMessageClick
        OnMouseEnter = lblLoginMouseEnter
        OnMouseLeave = lblLoginMouseLeave
      end
      object lblCharge: TLabel
        Tag = 1
        Left = 30
        Top = 43
        Width = 60
        Height = 13
        Cursor = crHandPoint
        Caption = #52880#49772#52649#51204
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 2302755
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lblChargeClick
        OnMouseEnter = lblLoginMouseEnter
        OnMouseLeave = lblLoginMouseLeave
      end
      object Label1: TLabel
        Tag = 4
        Left = 30
        Top = 127
        Width = 99
        Height = 13
        Cursor = crHandPoint
        Caption = 'SMS'#44208#44284#50937#51312#54924
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 2302755
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label1Click
        OnMouseEnter = lblLoginMouseEnter
        OnMouseLeave = lblLoginMouseLeave
      end
      object Label2: TLabel
        Tag = 5
        Left = 30
        Top = 181
        Width = 83
        Height = 13
        Cursor = crHandPoint
        Caption = #45224#51008' '#47700#49884#51648
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 2302755
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label2Click
        OnMouseEnter = lblLoginMouseEnter
        OnMouseLeave = lblLoginMouseLeave
      end
      object lblRest: TLabel
        Left = 108
        Top = 202
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
      end
      object Label11: TLabel
        Tag = 4
        Left = 30
        Top = 154
        Width = 99
        Height = 13
        Cursor = crHandPoint
        Caption = 'MMS'#44208#44284#50937#51312#54924
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 2302755
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label11Click
        OnMouseEnter = lblLoginMouseEnter
        OnMouseLeave = lblLoginMouseLeave
      end
    end
  end
  object pnlSmsMain: TPanel
    Left = 666
    Top = 25
    Width = 465
    Height = 356
    BevelOuter = bvNone
    Caption = 'pnlSmsMain'
    Color = clWhite
    TabOrder = 1
    object sbSmsItem: TScrollBox
      Left = 0
      Top = 71
      Width = 465
      Height = 74
      Align = alTop
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16773866
      ParentColor = False
      TabOrder = 1
    end
    object sbItem: TScrollBox
      Left = 0
      Top = 211
      Width = 465
      Height = 185
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ParentColor = False
      TabOrder = 2
    end
    object pnlSubItemName: TPanel
      Left = 0
      Top = 145
      Width = 465
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnlSubItemName'
      Color = 16509667
      TabOrder = 3
      object lblSubitemName: TLabel
        Left = 130
        Top = 5
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'lblSubitemName'
      end
      object lblContentsKind: TLabel
        Left = 10
        Top = 5
        Width = 116
        Height = 13
        AutoSize = False
        Caption = 'lblContentsKind'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnsp: TSpeedButton
        Left = 236
        Top = 4
        Width = 49
        Height = 17
        Cursor = crHandPoint
        Caption = #53945#49688#47928#51088
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
        OnClick = btnspClick
      end
      object pnlSmsButton: TPanel
        Left = 350
        Top = 0
        Width = 115
        Height = 26
        Align = alRight
        BevelOuter = bvNone
        Caption = 'pnlSmsButton'
        Color = 16509667
        TabOrder = 0
        object btnAdd: TSpeedButton
          Left = 60
          Top = 4
          Width = 41
          Height = 17
          Cursor = crHandPoint
          Caption = #52628#44032
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnAddClick
        end
      end
    end
    object tcItem: TTabControl
      Left = 0
      Top = 0
      Width = 465
      Height = 71
      Cursor = crHandPoint
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      OnChange = tcItemChange
    end
  end
  object Panel1: TPanel
    Left = 151
    Top = 0
    Width = 200
    Height = 669
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnlsms'
    Color = clWhite
    TabOrder = 2
    object imgSmsmain: TImage
      Left = 0
      Top = 0
      Width = 201
      Height = 669
      Align = alLeft
      AutoSize = True
      Picture.Data = {
        0A544A504547496D6167650D4C0000FFD8FFE000104A46494600010201006000
        600000FFED07CC50686F746F73686F7020332E30003842494D03ED0000000000
        10006000000001000200600000000100023842494D03F3000000000008000000
        00000000003842494D040A00000000000100003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040800
        0000000010000000010000024000000240000000003842494D04090000000006
        5B000000010000002D0000008000000088000044000000063F00180001FFD8FF
        E000104A46494600010201004800480000FFFE002746696C6520777269747465
        6E2062792041646F62652050686F746F73686F70A820342E3000FFEE000E4164
        6F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F
        0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E1414
        0E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080080002D03012200021101
        031101FFDD00040003FFC4013F00000105010101010101000000000000000300
        01020405060708090A0B01000105010101010101000000000000000100020304
        05060708090A0B1000010401030204020507060805030C330100021103042112
        31054151611322718132061491A1B14223241552C16233347282D14307259253
        F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3
        F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6374757
        67778797A7B7C7D7E7F711000202010204040304050607070605350100021103
        213112044151617122130532819114A1B14223C152D1F0332462E17282924353
        15637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3
        D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F627
        37475767778797A7B7C7FFDA000C03010002110311003F00F4D7581BAB9CFEE7
        DBC000C245EC1F9CFE63F0DC88D3006A073C8F34FBBCC7DDFED494C58D0F6870
        73E0F8E8A5E9FF002DDF7A5BBF943EEFF6A8DB63DB5BDCC01EE6B5C5AD83A903
        DA12532F4FF96EFBD460CECDC79E7BF12B3CE7F511A7A6D263FD1D913FE72B9B
        EDF44D9B7F4BB43B67F2B67D1FF390B49890FF00FFD0F4F04F89113C7C5293E2
        7EF4C153CFCAC9A09F40D1A54E786DCE2C3BE5AD63B7FF0037E8B376EB7FC226
        934BC0D1BB27C4FDE949F13F7AA4ECCB3D5B436CA0D53349DDEEDAD22ABF788F
        CCBDFB11B19D98E759F680CD82054E61E48916EEFED216AA4FAF89FBD293A9EF
        23F2249BB1F88FC8511D507A3FFFD1F4E0ABE663E45C5BE8BAB680087FA8DDC4
        82776D11F47DCD62B01291E29A578D9A9F64BDC61EDC6208234AF51277C0DDB9
        BB5CE6B5C898ECCC698BEC6BC4092D6ED131EFDA3FAEAC79250852549BB1F88F
        C853A6EC7E23F2144755A7A3FFD2F4F0D24488EFC98EE9F6B87869AF3FEC40BE
        C630B03AB2F3EE870311276A26DA83F76CF7416CCF628689B2D471E996546B39
        15963A5DA5E4197385C4B6C69DFF004DAA35D7D2EB80CC9003750DFB4B881277
        FEF7BBDC777B919BD2B1CB5B0FB401C00FE3F04E3A563B7E81B1A0EB01DE036A
        147B05D63B9647371009391481CCFA81177376976E1B743BE7DB1B776EDDFBAA
        964E26252C79B4DCE6E85D04BA4B8FF25BFC9F7AB9B19E91AF5D9B4363BC6D48
        5EA3441AD0F8BFFFD3F44CCDBEA553CEB1C7EF2B0625032C91657040D0C83DFD
        CAC199406E53D025646C1FED4FA79FE29AB9D814B5F1450D7BD8F7CB5A62623C
        478A941823BE827CF6A947E9A76EB03DDE3CFB53773F11F912AEAABE8FFFD4F4
        8BE8B2C731CC6EE0D9D6623DC8DB1FFBBF93FBD42E0EDAD2DACDA438E8D76D80
        665DFBAE402720B00FB23F43A7E947F5F9FEB255F8A9BCD043402D33F2FEF4FF
        00D93F87F7A15375F6026DA8D247009DD3A7F251371FF5052521C86E4ED2EC60
        3D430007C1681F9DC39AA7AEBFBDA7DFB54F71FF00505464EE27BC8FC892BA3F
        FFD5F4BB9F7B433D1EFBB77B777F57BA17ABD4BBB6A07C24C7276EB1FD446B3E
        889E3DD3CF8FF2610AD831590E2D9D9EC9E0FE7993F47F9692AD336CB368DE61
        F0378124077E70053EF778A137D8CDADE346F73CFBA7443C7631E5D91B1EC7BA
        6B21E796B096EEF69FCEFF003D25367D47789FC8A5F9C4F98FFA940B696DAD2D
        7920111ED241D3C0CA3C0923B69FF52929FFD6F4FDCD00073776A79F8AACEEA9
        D31963AA3633D4612D7B06A410D7DBB5DB47FA2AAC7AB3B7B39AED09D4289A6A
        2438D44B86A090267E292976594BDAD735A0B5E01690390E12D5273EA6987402
        3C7FDDE6A218C110C700381D842973A96389E2481C24A535D538ED6804EBF81D
        A7B2523713DA47FD4A79F06B87C21343BE96D313C7788494FF00FFD900384249
        4D04060000000000070001000000010100FFFE002746696C6520777269747465
        6E2062792041646F62652050686F746F73686F70A820342E3000FFEE000E4164
        6F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F
        0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E1414
        0E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108023000C903012200021101
        031101FFDD0004000DFFC4013F00000105010101010101000000000000000300
        01020405060708090A0B01000105010101010101000000000000000100020304
        05060708090A0B1000010401030204020507060805030C330100021103042112
        31054151611322718132061491A1B14223241552C16233347282D14307259253
        F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3
        F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6374757
        67778797A7B7C7D7E7F711000202010204040304050607070605350100021103
        213112044151617122130532819114A1B14223C152D1F0332462E17282924353
        15637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3
        D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F627
        37475767778797A7B7C7FFDA000C03010002110311003F00F52758D6E879F00A
        3EB37C0A85C40792781CFDCA0CAADB1A1FBB634F0224A4A4DEB37C0A5EB37C0A
        1FD96CFF004BFF004425F65B3FD2FF00D1092927ACDF0297ACDF0287F65B3FD2
        FF00D1097D96CFF4BFF4424A49EB37C0A5EB37C0A1FD96CFF4BFF4425F65B3FD
        2FFD1092927ACDF0297ACDF0287F65B3FD2FFD1097D96CFF004BFF004424A49E
        B37C0A5EB37C0A1FD96CFF004BFF004425F65B3FD2FF00D1092927ACDF0297AC
        DF0287F65B3FD2FF00D1097D96CFF4BFF4424A49EB37C0A5EB37C0A1FD96CFF4
        BFF4425F65B3FD2FFD1092927ACDF0297ACDF0287F65B3FD2FFD1097D96CFF00
        4BFF004424A49EB37C0A5EB37C0A1FD96CFF004BFF004425F65B3FD2FF00D109
        2927ACDF0297ACDF0287F65B3FD2FF00D1097D96CFF4BFF4424A49EB37C0A5EB
        37C0A1FD96CFF4BFF4428BEAB6B697EEDED1C8882929B0DB1AED073E054D57A4
        82F047078FB958494FFFD0F4BC8FCFF87F047A7F9967F547E440C8FCFF0087F0
        47A7F9967F547E4494CD25978D8B77ADEBD22AA00696348A1CC2E921CEDD57A8
        C7FB367E8F7FFC27E8F67A76589D43AFE9D84D0C36358DADCF6B76131E9B9BF4
        6FFD0BBDEE6A4A751259401FDA157B4D626B0DADDB7DA03331BB5BE97B76FB77
        FF0038FF00FD168F9955979F45AE78DC04B4B1AEA809FE71CEB6B7EE77FC0B2C
        DFFF0017FCEA4A6F24AAE231ECAB63F702C310E0D00401EDAFD2656C755FE8FD
        9FE63FF46AA33EC42D2F6DB560BD80B3D369A83F96EEF5FF009C67D36B3D3633
        F9BFF49FA4F4EB4A755259C039BD3B1DAE2D686B6B73AC738060D9B1EC6EEF7F
        D37B5ACDFF0043FC27EE5760EB7D776636D65C0EEBBD41407D674F43D3DFEDDE
        FDDBFD9FA3B3D3FF0008929D54924925292492494A4924925292492494A49249
        25292492494A50BBF997FF0054FE45350BBF997FF54FE4494831FF0033E1FC15
        A5571FF33E1FC15A494FFFD1F4BC8FCFF87F047A7F9967F547E440C8FCFF0087
        F047A7F9967F547E4494D76E239A48AF22D634B9CFDA056402F2E7BBE9D6F77D
        2722DB47AB57A4E7BA4169DE2374B087B5DF4767D26FEE23249290329B5AEDC7
        22C78FDD70647FD1AD8FFF00A69598D5D8EDC5D6027F76C7B47F9AC76C474925
        22AA86D53B4BCCF3BDEE7FF9BEAB9FB505B88E6922BC8B58D2E73F6815900BCB
        9EEFA75BDDF49CADA49291D3536AA59534CB6B6868279868DA93EA6BDF5B8F35
        3B7B63C76BABF77F66C444925292492494A4924925292492494A492492529249
        2494A49249252942EFE65FFD53F914D42EFE65FF00D53F912520C7FCCF87F056
        955C7FCCF87F0569253FFFD2F4BC8FCFF87F047A7F9967F547E440C8FCFF0087
        F047A7F9967F547E4494869659654C79B9F2F6871D19DC7FC5A27A567FA67FDC
        CFFD269637F47ABFA8DFC88A92917A567FA67FDCCFFD2697A567FA67FDCCFF00
        D268A924A45E959FE99FF733FF0049A5E959FE99FF00733FF49A2A492917A567
        FA67FDCCFF00D2697A567FA67FDCCFFD268A924A45E959FE99FF00733FF49A5E
        959FE99FF733FF0049A2A492917A567FA67FDCCFFD2697A567FA67FDCCFF00D2
        68A924A45E959FE99FF733FF0049A5E959FE99FF00733FF49A2A49290D0E2E67
        B89710E7364C7E6B9CDFCDFEAACFFAC57DD460B4D0F35B9F635A5CDD0C439DF4
        BF37E8AD1A3E81FEBD9FF56E59BF58DBBB1291E370FF00A8B518FCC107671196
        755750720E559E98207F3DACEA21CCDDBFF3538FDAC5E6B1916EE6BC54E6FAAE
        FA6E24359BB7FF0021FEFF00A0AC631A2BA1BBAC34BDAF265AE73274F6D9B994
        5DBBE959FEB65898F51A9990F743AC67AC6CAC0706B7E97A8C7398EA9EEF53F9
        7FCE7A7FA253D768ACF3283D4EA62C755F68B7D466EDC3D576818373FF003F6F
        B762934F547D82A6E459BC86B9AD3716C8706B99B77BFE93F7FD14D6E66DC9C8
        B28708B9E7DD1CB4BB76DDAEFCD7FB7D4DCDFF00BFA5665547237B41D8EAD8C7
        359ED23F46D6B9AC7D8DB1CDE367FD0FF08957874522BEFEA7496EEC9B61C090
        45AE32012CFCD7BBF398F5D55163ECE9D5D96197BE96B9C78925BB9CB9DCAB0E
        432B01EF2C024D6E330F9783F4595B5EFF00CEF536EF5D0E1FFC934FFE1767FD
        4051E40282E8EECB1FF33E1FC15A5571FF0033E1FC15A51AE7FFD3F4BC8FCFF8
        7F047A7F9967F547E440C8FCFF0087F047A7F9967F547E4494C063540000BC00
        200DEFFF00C927F42BF17FF9EFFF00C921FDAC3802C63DCD3A870803FE9B98E4
        FF006B3FE85FF7B3FF004A23C3245867F67678BFFCF7FF00E492FB3B3C5FFE7B
        FF00F24A1F6A3FE89FF7B3FF004A25F6A3FE89FF007B3FF4A25C253619FD9D9E
        2FFF003DFF00F924BECECF17FF009EFF00FC9287DA8FFA27FDECFF00D2897DA8
        FF00A27FDECFFD28970955867F67678BFF00CF7FFE492FB3B3C5FF00E7BFFF00
        24A1F6A3FE89FF007B3FF4A25F6A3FE89FF7B3FF004A25C255619FD9D9E2FF00
        F3DFFF00924BECECF17FF9EFFF00C9287DA8FF00A27FDECFFD2897DA8FFA27FD
        ECFF00D28970955867F67678BFFCF7FF00E492FB3B3C5FFE7BFF00F24A1F6A3F
        E89FF7B3FF004A25F6A3FE89FF007B3FF4A25C255619FD9D9E2FFF003DFF00F9
        24BECECF17FF009EFF00FC9287DA8FFA27FDECFF00D2897DA8FF00A27FDECFFD
        2897095584B5D6D6376B66249D493C9DDF9C87918D4E4D7E9DCDDCD991A9041F
        DE6B9BEE6A6FB59FF44FFBD9FF00A512FB59FF0044FF00BD9FFA512A923441FB
        17A77FA377FDB967FE944C7A1F4C3CD6E3FF005CB3FF004A2B1F6A3FE85FF7B3
        FF004A25F6A3FE85FF007B3FF4A23EA568D6FD85D33FD09FF3DFFF00A513FEC3
        E9BFE89DFF006E59FF00A5158FB51FF44FFBD9FF00A512FB51FF0044FF00BD9F
        FA512F5F72AF4A0FD8BD3BFD1BBFEDCB3FF4A2B2F63594398D0035AC21AD0200
        11F45AA1F6A0D04BD8F6B472E3040FF31CF722DDFCCBFF00AA7F22078BAA8574
        438FF99F0FE0AD2AB8FF0099F0FE0AD2097FFFD4F4BC8FCFF87F04F67F4077FC
        49FF00A94D91F9FF000FE09ECFE80EFF00893FF5290E8A59249252AD52492492
        94924924A5249249294924924A5249249294924924A5249249294924924A5249
        249294A55FF406FF00C50FFA95152AFF00A037FE287FD4A6CF65458E3FE67C3F
        82B4AAE3FE67C3F82B498B9FFFD5F4BC8FCFF87F04F67F4077FC49FF00A94D91
        F9FF000FE09ECFE80EFF00893FF5290E8A59249252AD5249249294924924A524
        9249294924924A5249249294924924A5249249294924924A5249249294A55FF4
        06FF00C50FFA95152AFF00A037FE287FD4A6CF65458E3FE67C3F82B4AAE3FE67
        C3F82B498B9FFFD6F4BC8FCFF87F04F67F4077FC49FF00A94D91F9FF000FE09E
        CFE80EFF00893FF5290E8A59249252AD5249249291BB2296E43319CE8BAC63EC
        6320EADACD6DB5DBBE87E8DF7D5FEBEA21DFD43131FED1EAD9B7EC948C9BF471
        DB51F576D9EC6FBFFA35FECAFD4B3FEDCAD647D63ABA5DB998CECBCCE9F4D94D
        76814751632E696DCEA7F4CDA9F9189B1F5BF19CCF53F49F9EA97D5CC6E97D43
        0F25ADC8C26D9D5B0AA6646174E6329752DDB77A8E7D7EB646EB58FCEF47D4B2
        BAFF009A67E891E1156B0C8F153D265F50C4C39FB459B36D36E41D1C62AA7D3F
        5ECF637FC1FAF5FB3F9CB3FC12B0BCFBA85B9BD4F0FD5B719DD4FF0055C8662B
        ECA722C76EC86D0EA2FC6755D131317757E87E89FF00A3F53D7FE935D4BD0523
        1A0142564B9DFB7FA5EEBDA6D7B7ECACBACB5CEAAD6B76E33BD2CC7556BEBD99
        1E83DDB2CF42CB15DC7C8A72186CA5DB9AD7BEB2608F756E7516B7DDFB9754E6
        2E233ECAF228CCA28CAD96E2E3F5C7645551ADCE876556E6D37B6D6D8FA997B3
        DFFA3F4ECFF456AE83132ECC6E9169A035D956E6E6558AC70241B5F9792D6EE6
        B3DEEA6BF75F93E9FE92BC6AAEB7FC1A26200D102449D5D3AFA862595625ACB2
        599F1F6574386F9ADD94DFCDF67E86A7BFF49E9FFDBAAB5DD7B02AC838CF6E4F
        AC37435B8B92E90C2D65AEA9CCC77B2D656F737DF5FA95FF00DB95ACFA3F4177
        49E96ED1FD3B30D2C9E5D4FD8F37EC77FF002F7D3B69B5FE9D75FDB71F36AABF
        455A2E4E55BFB4BF6A003EC5804E1DAED64B6E2C7676435DFCDFA58993560B2D
        BDF657F66AF1FABFAB5FA95D48526CD3A873F1BECCFCA697D9556F7D6EF4EB7D
        8EDCC7BB16D6B68A9B65CFF4EE6B99FA3AFF00E13F9AFD22055D6F06DC8AB1C0
        BD965C4B2AF5B1AFA5A5C1AEB5CDF57229AD9BFD1AAC7FF38B1B329AEEFAB390
        DB5CE6B0750C82580022C77DBED6554B9BF65EA6F7B1F73AAF6578767A967E8A
        DFD15962A3D170ACAFABE23998AFA65EEDD7331995EC0D658E76EB6DE81D3363
        2FDBF65B3D3CCAECFD63F449088A250646C07B6492490645249249294924924A
        52957FD01BFF00143FEA5454ABFE80DFF8A1FF00529B3D951638FF0099F0FE0A
        D2AB8FF99F0FE0AD262E7FFFD7F4BC8FCFF87F04F67F4077FC49FF00A94D91F9
        FF000FE09ECFE80EFF00893FF5290E8A59249252AD524924929A59DD5F0F01C1
        B93EB0DDB61D5D175AD97BBD2A9BEAE3D36337D8FDACD9EA7A9F43FD2568B8B9
        F8F94E2CA8BC58D636D757656FA9C1AF75B554E75790DADEDDEFC6BFFF003EFF
        0035657EA54EAD4DB63D81F8F7E6E341229C675756DB1A7DB75B6DB9188F7BD9
        ED7E17A1FD1F23F59FE75985663D3E9D4DF91D5326EBFD7A7A8518B4D6CF5F68
        616B9F9DE85D7D1D3F32CC6CB7FB9CCB1967D9FD3B2AF5717ECFF68F4EB54296
        59E2A4D674CFAA75D5956BF030C33027ED4EFB3B0EC8ADB94EFF0007EFFD0DAD
        7FE8FD4FFB7569DF974D16555BDB638DC76B0D7559634196B7F4B6D55D8CC767
        BFE9DF6575FF00DB762E4F3303A764F4F7DEDC1BBEC76D37596F51BABC7B9A45
        CD75AEEAEDABED15E563E46F7372BF418F5D9663FEADF65FD0617D8EC7D63C6C
        1FB7645B7538CDC9663B2DC36594D0F7665FFA56FD89CEC8AECBB23D3F43119E
        862595E47EB5FCE7E931FD3755900945D0D03D23ACC6BECBB06C0DB08ADAEBA9
        7365A6BB8D953776F6EC732CF42F66CFFB77F9C559DD53A562629BCBC558E6CB
        DA4B58E8F529F5EFCCF6B1BF4F7E366596BFFC2D9FE93D4AFD4A5B9B83D6B2ED
        0FAF1FA7E1F4FC675F58A8922B63BA86CF43D2733D2650D6FD0FB3E47A95FE8A
        AF4D73DD4DB9B5F4D38F9EF35E55632AFB715BB3D227330FAA663AE6B98DB2E6
        3EBC9766616CFB6595D95E2FDA7D2FD62B4046F454A443DA675F898ECAEEC91B
        8B1FFA10D63ADB3796B9BFA0AAA6D973DFE8BADF53D0AFD4FB3FADFE0BD453C4
        CBA32EB365049DA763D8F6BAB7B5D0D76DB68B5B5DD53F639AFF00D2575FA95F
        E97F9AB2B595D7BA861E1E6E09FB5D18B9AE2FAC597B9A5ACA5EC7DB6BAFA1F6
        50F7D365D83432B7D7663FA791B3F4BE97AB8F90BA0F50C3CCCDCE3F6BA32B35
        A5959B2873435F4B18CB6A751432CBDECA6BBB3AF658FB2CC8F53237FE97D2F4
        B1F1D5696BAFD54E8B2AE9D9B896542AAEEC5759636CA9CC0586C65AEF5F7D6F
        6EC7BFED6DB2CDFF00E12CFD2FFC22863F45E8F8B6B6FC6C1C6A2E64EDB6BA58
        C7091B5DB5CC6EF67B1CE628F456B5987606BC3C1CACB76E683009CABDCE6FB9
        ACF7B1EED967F83F53F9AB2CABF48AFA1AEA02800402A4924925CA4924925292
        492494A52AFF00A037FE287FD4A8A957FD01BFF143FEA5367B2A2C71FF0033E1
        FC15A5571FF33E1FC15A4C5CFF00FFD0F4BC8FCFF87F04F67F4077FC49FF00A9
        4D91F9FF000FE09ECFE80EFF00893FF5290E8A59249252AD5249249291DD914D
        3B3D576D36BC575B4024B9C7F35AD6FBDFEC6B9F67FA3AFF004B6FA7557658AA
        7ED4E94DCAB65E2BB1A0B2CC8731CCAC8A7D47BA9FB739B5E2DAFC7FD65F650C
        C8B2CC7FD6BF475FA791E9C72BFE5BC0F53F9AF472764FD1F5A71BD2DBF99F68
        FB37DBBD3FF09F66FB57F82F51739D49AEBB1B2716A79BB2BD4EA24F4B680E75
        21F5F506D59ADA98DFB6EFCBF56AFE7ECB31ACFDA5FAAD55FA985E991158490E
        DD2CFAB17E5B2D6E1D2CCDB2E963ADC5355E6D8B329B77EB14D77377FD9AF7D7
        95FCDD9654FF004ADF56B5B2B91EA593D332BAD5396ECB67ECE2FC7ADF9955FE
        9B03D957597BABFB5E3D95EC7D7EBD1EA33D4F53D3BD9EA7F39FA4336DEA4EC7
        F4EBB6C7B7AA0B70B0AEDE66A0CBB27ECB97539EEDF90FB3A45AECDF5FD4AECC
        9AFA6D3FACD96E5D762463B6A8127A467D9DD75AFAF63AE6EDAEE7082E1B47AB
        5576BBE9FE8D97FA95B2CFF4BEAFF844AFC7C7C86866454CB98261B634387B9A
        EA9DED7FEFD36DACFF008BFD1FE7AE7CB0E1DDF581F8B6583AA38597E2506C7D
        8E737ECF8DB2FA306D758CB59F6B6BA8AECFB3D9E9FF0041ABF455FA4AAD7936
        1C7B9CDCDA5B82D7D32199D916D45D17FAADB7AF3A9F5B03D4FD51FB2BB2CFD2
        54CC6B7D3FDA7FA45C3D4278BA17AAC9C8A7171EDC9BDDB2AA58EB2C7C130D60
        DCE76D6FBDDEC6FE62AC7AC74E6DCFA9D76CD9BF758F6B994935073AF6B72DED
        FB33DF432BB7D5AEBB2CB2BF4AEF57F98B3D3CFC3B7F688C2C405EEA688CAC97
        58EF52432CB1BD3ABAEFDB5D9918F7E4D0ECAC6CEFE73231F029FB57A9F6FF00
        D250FAC0FA72EAB71B0773B2183359674D0D6EFADC68CE6FED1F431DBF69DF97
        75B5B2A7DF6598D91567D76FA5F6ABEAB12035A2A323561DF6758C07D56DBB9E
        C14EDDECB2AB2AB3DE7655B71ADAEBBDFEBBF7538DE9D767DA6CFD155EA5B5FA
        6A74F54C2B855B5EE0EBAC3432B7B1EC78B031D95E9D955CD63E97FD9EB75FFA
        7AEBF52BD967F84AFD4C5C9BA8CFCBCCBB132A8762D95E163FDA76BB22B36FAD
        96D6D753B12EC77D5975DD9386FF0052BC8F531BF436FE8FF476571C1C4EAD45
        FD2ABCBA266EFB4E45B5B4B85763B172EAB6BC9C9C8CCCFCAC87D6F7514D77BE
        BAF1FD3FD17ABFCD575AE1148B36F455E45365D6D0D77E929DBEA3082080F1B9
        AE6EFF00A6C7FB99EA57FA3F52ABABFE76BB2BAC8B3ACFFC5051E9FF00DC3BBE
        D1B7FE328FB1FAFF00FB3DF66F53FEEEFA5FE1168A1B2F054924924952492492
        94A55FF406FF00C50FFA95152AFF00A037FE287FD4A6CF65458E3FE67C3F82B4
        AAE3FE67C3F82B498B9FFFD1F4BC8FCFF87F04F67F4077FC49FF00A94D91F9FF
        000FE09ECFE80EFF00893FF5290E8A59249252AD5249249291DD8F4DDB3D56EE
        34BC595B8120B5C3F39AE6FBD9EC739967FA4AFF00456FA95596568892492D52
        1FD9F1FED1F6AF499F69D9E9FAFB46FD93BFD2F57E9ECDFEFD9FCDFA888924A5
        2492492E5249249291E46363E552EA326A65D4BE37556343DA60EE6EE6BBD8FF
        007B5AF55B1FA2F46C5B5B7E360E35173276DB5D2C63848DAEDAE6377B7D8E73
        15D492450475E3D35DD6DED6FE92EDBEA3C92490C1B5AD6EFF00A0C67B9FE9D7
        FA3F52DBACFE76CB2CB089249214924924B94924924A52957FD01BFF00143FEA
        5454ABFE80DFF8A1FF00529B3D951638FF0099F0FE0AD2AB8FF99F0FE0AD262E
        7FFFD2F4BC8FCFF87F04F67F4077FC49FF00A94D91F9FF000FE09ECFE80EFF00
        893FF5290E8A59249252AD5249249294924924A5249249294924924A52492492
        94924924A5249249294924924A5249249294A55FF406FF00C50FFA95152AFF00
        A037FE287FD4A6CF65458E3FE67C3F82B4AAE3FE67C3F82B498B9FFFD3F4BC8F
        CFF87F04F67F4077FC49FF00A94D91F9FF000FE09ECFE80EFF00893FF5290E8A
        5924B58D12F7F80FBCFF00E454AC6A4937BFC07DE7FF002297E93C1BF79FFC8A
        49B5D251FD27837FCE3FF914BF4BE0CFF38FFE934956C9251FD2F833FCE3FF00
        A4D37E9BF759FE73BFF49A4AB66928CDFF00BACFF39DFF00A4D2FD3FEED7FE73
        BFF49A4AB64928CDFF00BB5FF9CEFF00D2697E9FF76BFF0039DFFA4D255B2494
        66FF00DD67F9CEFF00D269BF4DE0CFF39DFF00A4D255B34947F4BE0CFF0038FF
        00E934BF49E0DFF38FFE45255B24937E93C1BF79FF00C8A5EFF01F79FF00C8A4
        AB5D24BDDE03EFFF00CC52F7780FBD24294ABFE80DFF008A1FF52A2A55FF0040
        6FFC50FF00A94D9ECBA2C71FF33E1FC15A5571FF0033E1FC15A4C5CFFFD4F4BC
        8FCFF87F04F67F4077FC49FF00A94D91F9FF000FE09ECFE80EFF00893FF5290E
        8A59249252AD5249249294924924A52A39D9D914E4D387874B2FC9BD965A05B6
        1A6B0CA4D4DB7F48CA72DFEAEFC9A3D267A7E9FA7BFF004B5FA75D765E5473B0
        722EC9A7330EE65193432CA81B6B37565971A9D6FE8D97623FD5DF8D47A4FF00
        53D3F4F7FE8ACF52BB2B5A5A0A7C1CBAF3B0B1F36A05B5E4D4CB98D7001C1AF6
        B6D635DB77FBF6390BA8E65B8CDC76501AEBF2722AA6B638182D9F5729DF99B1
        F5E055937D7BECFE72AF4FF496D95D76170712BC1C2C7C2A897578D5329639C4
        1716B1ADA98E76DD9EFD8D423896BFAB3735E5BE9538EEA6868277175CF6DB92
        EB3F91B31B13ECDE9FFDD9F57FC1A1A5AB5A43D63ABFECDF48452DF5771F572E
        EFB3D0366DFD1BB27D3C8FD62CF577D547A7FA4AEACAB7D5FD5FF48067D60B1E
        E160C47331196E3E3DE6E7166432DC918CEAABFB1FA7631CCAFEDD8CCC9F5332
        BB2BFD6BF4567A75FDA2DE760E45D934E661DCCA32686595036D66EACB2E353A
        DFD1B2EC47FABBF1A8F49FEA7A7E9EFF00D159EA576574B1FEADFD99ACC5A327
        F506BF1ADB2B7B375C5F88DC6AA8DB92CB2BA59559FB3F1BD5AFEC765967E9FD
        2B6BF52BFB39155AA0DDA2E93F5B29CEC676564369AE96631CBB5F8D71C9F45A
        D0D7BEACE6B29A1F8F91B1DFA2A2BFB47A9F67CAFF00B8FF00A4D0EA9D671FA7
        E2E6DD06EBB071C64BE96B5D25AFF55B47B9ADB36B2C7D16B2CB3F49F66AFF00
        4B6FA752A981D0EEC4C6A9B9AF67516E161BF0A8A2BA455EA54E14FAB5DEDC8C
        9BE9B6DBFEC7432BFD263E3FF3DEAFF39FA358DD12EB7A2E662E55AF195D4297
        63BAEB88BAC655B1D8B8ADB5CD77BEDAE9FD3E4B2BB3ECF6751C8CDB6AB3D2C8
        44D5A85B74759E9E6E6525EF6B9FB049AAC6B18EB435D5537DAFAFD1C5C9B3D4
        ABD3C5BECAF27F4B47E8FF004F5FA926755C1B728E232C71B65CC6B8B1E2B73D
        9BBD5A6AC9737ECB6DD5EDB7D4A2BB2CB2BF4AFF0056BFD5ECF4E81FAB6C7F52
        1D42D38D65AF7D575F61C56BAEF56A6D557EA7936D967D931ECFB355FA07D791
        915FE9BD2CAAEDB2BB31ECD1D2AEABAAD99FEBB032C9DED654196D93FCD57977
        B2CF47229A3E8637EA75E4D75FE8BED567A999F6C1415ABA4924924B94924924
        A52957FD01BFF143FEA5454ABFE80DFF008A1FF529B3D951638FF99F0FE0AD2A
        B8FF0099F0FE0AD262E7FFD5F4BC8FCFF87F053D86CC4D8342FAF689F36A8647
        E7FC3F82353FCCB3FAA3F2243453545F540DCE0C3DDAF3B5C3FACD7A7FB451FE
        919FE7057124EE31D914D3FB451FE919FE704BED147FA467F9C15C492E21D954
        D3FB451FE919FE704BED147FA467F9C15C492E21D954D3FB451FE919FE704BED
        147FA467F9C15C492E21D954D3FB451FE919FE704BED147FA467F9C15C492E21
        D954D3FB451FE919FE704BED147FA467F9C15C492E21D954D3FB451FE919FE70
        4BED147FA467F9C15C492E21D954D3FB451FE919FE704BED147FA467F9C15C49
        2E21D954D3FB451FE919FE704BED147FA467F9C15C492E21D954D3FB451FE919
        FE704BED147FA467F9C15C492E21D954D237D5076B83CF66B0EE71FEAB5A8FB0
        D789B0EA595C18F208CA377F32FF00EA9FC88136A029063FE67C3F82B4AAE3FE
        67C3F82B4825FFD6F4BC8FCFF87F046A7F9967F547E441C8FCFF0087F046A7F9
        967F547E4494D7C8CD7D0EB40A5F60AEA169734B4013EA7D2DEEFF0082FCCF53
        FE2FF7E4724C64EDACB9D8DC344FBFD8DB5AD6BB6FD3F7EDDBEF41CFC6375B5B
        BD23600D70796B6A73A65BE9B7F5AFCCFE77E829ECB8E2DA036CF55F25A1E58C
        71700DD9EEC4757EDF6ECFA7BFFEB6929357935D8EDA1B6027F7AB7B47F9CF6E
        C5216CDEFA63E8318FDDE3BCD8DDBFF812AD5540D8D269C8646BB9F717374FDE
        6B722CDDFE629371AC6DBEB823D4F51C5C3B1610DAF6FF0025DB2AA6CFF8CFD1
        FB2BB125317E7BFD2A2C657B8DECF536CBC9021BFE869BFF00D237F71129C936
        D818EACD6F3532D20CE9BF735D5BBDBED7336FF6D56B30CFD8716AF4438D600B
        5AD1539C3DAEF5367DA3F43FCF6DF511706AB2B7D80D6E655B58181E2A0666C7
        3DBFAAFE6FBBF3FF003F7A4A4B9EE7370721CD25AE6D4F2D70D083B5DEE6AE2A
        AC7758F0D04027F78868FF0039FEC5DA751FF93F2BFE26CFFA972E5C36DA8975
        5A3A2248048FE5377FD07FF2EBFD229716D2592DD8B7A5926B639EDAECB1E5AD
        0EF73498A9CDDAEAB7FD3F5DBFF07FF08959D3ECAAFAE831BAC12D2439BA4B9B
        F45EDADFBFDAEF67A7EA59FE0BD4DE9CE4648A0D5EE05CF7B9EF2649DE18DFF3
        FDAEF7FF00A3B7D2FCFB3D457E65D7D95DAE00D8C6ED25C03813363F76DB77B3
        FC27D0FE6EBFF07B3F475D6FF5ADD18DD8269B18CB5CC687827796BDB1FD66BE
        BF5BFB7E9FA7FF006DD9E9C32B08D0D0EDCD712F73086CC0DAD63BF3B63F77E9
        3658C7B2BF4EC44765E4BDDBC8687346D6B856C040F6EDDAE637D8E66D6FA6FF
        00E72BFF00049DA1CEA1B5B9A406BDEE07C778637E8FFD6D1F57556889E6D774
        FA2A2E7168B6C8692607B68DBEDFFAEBBFCF7FFA44D4E2B1EF6B5C5DEE31EC6E
        E33F9BB5BBABDFEF560D7FA1ADBE165C7FE8E32806D8D3224182241ECE1B5C94
        40A51B6593D3AAA1B2C73AC0DB1F53DC5BB407336FF29FFCE6E52B3A4FA349B2
        C74380DDB7B8FE63DAEFDD7FEB3F41F5FF00E7C4EFBAE35D6C208754E25B60E7
        50CDBFF6DFA7F4FF00F49A4DC8B7ECE682D25B0434EBA4B996BBFB1FA04AA48B
        0BDDD22BAAB73F7996B438B4B1EC24EE6B5CD6FAAD66E633D46FBFFF000242C7
        C56DF68AB46921C4182786B9DF45BEFF00CD46765E458DB1B68DDBC1121AD6C1
        2E65AE73B637DEFB3D36A1566CADC48682488F7343C7F9AE6D89012AD54775EF
        E9CCA2CAEBB1CD05EDDC5C5AF681AB9BF476EFFCDFF47FFA510F23A736800970
        74B9CC204C080C77E7FBF7FE9366CB2BFD1A3BB2325CFF0054EDDE67DC18C0E9
        3F9DB98DFA7FCBFE72B432E71A5956D3EC739D3E3218DFFD169007AA9A6EA204
        B4CAECB19CE774CA9CE32E750D2E71D49259F49CB9715B8E84185D3E1FFC934F
        FE1767FD4051E6AA8AF833C7FCCF87F056955C7FCCF87F056944BDFFD7F4BC8F
        CFF87F046A7F9967F547E441C8FCFF0087F0531FD147FC5FF04949D25CDFA967
        EF3BEF297A967EF3BEF29DC2B3DC0F469D66E180EC6639C039C6649D4F2E47D8
        CFDD1F726AE06C5B6D2553633F747DC96C67EE8FB924B6D56FD9DD3BFEE2D3FF
        006DB7FF0022A3B19FBA3EE4B633F747DC9297FD9DD3FF00EE2D3FF6DB7FF229
        FF006774FF00FB8B4FFDB6DFFC8A2FA557EE37EE097A557EE37EE096AAA43FB3
        BA7FFDC5A7FEDB6FFE452FD9DD3FFEE2D3FF006DB7FF00228DE955FB8DFB825E
        955FB8DFB825AAA981C4C5754DA4D359A9A65B5968DA0F8B59F47F3947F6774E
        FF00B8B4FF00DB6DFF00C8A2FA557EE37EE097A557EE37EE096AAA43FB3BA7FF
        00DC5A7FEDB6FF00E452FD9DD3FF00EE2D3FF6DB7FF228DE955FB8DFB825E955
        FB8DFB825AAA90FECEE9FF00F7169FFB6DBFF914BF6774FF00FB8B4FFDB6DFFC
        8A37A557EE37EE08570A2B05CF0C6340D5CE80025AAA95FB3BA7FF00DC5A7FED
        B6FF00E452FD9DD3FF00EE2D3FF6DB7FF22A3FA125ED1B4B983DCD112377D1DD
        FB8A9E6E6D58B5D96D8E6D55565DB9C5AD8001DBFBA9D18CA46820901BDFB3BA
        77FDC5A7FEDB6FFE4516EFE69FFD53F916453985E0BC16BEB2C73C10D6C11B5C
        F6B9AE6356AFFDA4FF00ADFF0004A70944D150903B23C7FCCF87F056955C7FCC
        F87F0569352FFFD0F4BC8FCFF87F0531FD147FC5FF00050C8FCFF87F0531FD14
        7FC5FF000494E4E3B8863435E1A03E6D05C1B2DF6FF9DF9DEC517EB8C20B7479
        2002DDD1EDFA4DFA685E9BBC5BFE70FF00C925E9BBC5BFE70FFC929187574F07
        FA2B3E7F95C8EABE19DB8CC699913C091CBBF711B70F3FB8A61DD963B45924A3
        B879FDC52DC3CFEE2825924A3B879FDC52DC3CFEE2929B89287AA3C1DFE6BBFF
        002297AA3C1DFE6BBFF229299A4A1EA8F077F9AEFF00C8A5EA8F077F9AEFFC8A
        4A669287AA3C1DFE6BBFF2297AA3C1DFE6BBFF00229299A4A1EA8F077F9AEFFC
        8A5EA8F077F9AEFF00C8A4A66ABE531D656E63486B9E36CB9BB80FECFE722FAA
        3C1DFE6BBFF2286FB1B234771FBA7FF22929AF8B88312B7D4D76EAC9DCD0400E
        1A7BB7399F4FFEDB58DD4BA7D5999ED7E53DCEA687BDDF6631B1CE9F6D8EFDFF
        0066EF67FEA4F537CB810441E3C0AA568DF638562C1B496C35F68020EDFA355D
        5B1AA4C4689593161CAE9D80DC26DF4D363DD4B9B6BEBA9DA8AC163BDAD77D3F
        A7FEBEAFA9659D29FE89FF005BFE0B2DAFF4EC76F6B9C1AD73B6B9F6BB50D75A
        DF6DB63D9F9BFB8B50FF0044FF00ADFF0004731B2345631411E3FE67C3F82B4A
        AE3FE67C3F82B4A25EFF00FFD1F4BC8FCFF87F0531FD147FC5FF00050C8FCFF8
        7F0531FD147FC5FF000494E1B297D825A244C6A4093FBADDFF004BFB091A2C0D
        DE40DB009820900FD1DCDDDBD8A755B586B03F7035BB7B60033F47DAEF77B3E8
        A4E7D1E996B0B9AE7097CB46A7F7776EF633FEB6A4610037F07FA2B3E7F95C8E
        8183FD159F3FCAE474C3BB2C768A92492412A49249253692492494A492492529
        2492494A4924925290321E58D2F0D73F689DAD124FF551D0322B65AD35BC12D7
        087004891FD66A4A434E4B3258E75409AC68DB0880EFDEDBF9FECFF8B5432369
        3607007F48EE46EEEEFF0081C8FF00A862D0AF1EAA43FD26EC0ED4B468D98FCD
        6FD06FF6155762E4B9EE218C3B89248B0B64FE73B6FD9ECDBFD4F52C4FC44026
        D6CC123469D61A3D58103659C08FF06EFF0083A3FF003DADCFFB49FF005BFE0B
        3DB8377B8D8C68696B9A48B0BC8046D76D6FA347BF67FC27F9EB40FF0044FF00
        ADFF000473484A51A442240D51E3FE67C3F82B4AAE3FE67C3F82B4A35EFF00FF
        D2F4BC8FCFF87F0531FD147FC5FF00050C8FCFF87F0531FD147FC5FF000494E1
        457FBCEFF347FE4928AFF79DFE68FF00C929D54B5ED05CE2D2F3B1800993FCAF
        77B3E93523434566C0E3ED8065B0D27F39AD76EF7BFF00EB6A461A6FE1C8C666
        D00B7582743CB91A5DE03EFF00FCC50B07FA2B3E7F95C8E9877658ED1632EF01
        F7FF00E6294BBC07DFFF0098A9248258CBBC07DFFF0098A52EF01F7FFE62A492
        4A4F36FEEB7FCE3FF914A6DFDD6FF9C7FF0022A6924A6136FEEB7FCE3FF914A6
        DFDD6FF9C7FF0022A6924A6136FEEB7FCE3FF914A6DFDD6FF9C7FF0022A6924A
        6136FEEB7FCE3FF914A6DFDD6FF9C7FF0022A6924A6136FEEB7FCE3FF9150B0B
        E44B5BC789FF00C8A32AD9961AA97D81CD616890E7825BFDAD9EF494A25F0640
        88F1FF00CC5498AAE264D990DB0D8D159698F4B5DEDD3FC2EFFDFF00F07FA356
        988152477D077C0A81FE89FF005BFE0A6EFA0EF81503FD13FEB7FC120A478FF9
        9F0FE0AD2AB8FF0099F0FE0AD22A7FFFD3F4BC8FCFF87F0531FD147FC5FF0005
        0C8FCFF87F0531FD147FC5FF000494E2577B9800DAD76D3B9A4CE87F79BB1DFD
        5FA691BC9696B58D697001CE1327FE96CFCDFF0046A3BDBFB8DFBCFF00E492DE
        DFDC6FDE7FF24A46174F07FA2B3E7F95C8EABE189C66104B46BA0E3977EFA36D
        3FBC7F04C3BB2C768B2494769FDE3F825B4FEF1FC104B2494769FDE3F825B4FE
        F1FC125371250D8EFDF77FD1FF00C8A5B1DFBEEFFA3FF91494CD250D8EFDF77F
        D1FF00C8A5B1DFBEEFFA3FF91494CD250D8EFDF77FD1FF00C8A5B1DFBEEFFA3F
        F91494CD250D8EFDF77FD1FF00C8A5B1DFBEEFFA3FF91494CD0ECFA43E09F63B
        F7DDFF0047FF002286F6B811EF71D3C07FE45252C783F04EC5170307DC4E9E5F
        F91526205491DF41DF02A07FA27FD6FF00829BBE83BE0540FF0044FF00ADFF00
        048291E3FE67C3F82B4AAE3FE67C3F82B48A9FFFD4F4BC8FCFF87F0531FD147F
        C5FF00050C8FCFF87F0531FD147FC5FF000494E3D2C616B373771B1FB0924E83
        DBF4767E7FBBF3D49D8D5B31DE410E734B4EE0E0409FCDDBB901B63D8086B9CD
        0EE40244A882E00B41201E44F2A461043AB83FD159F3FCAE4740C1FE8ACF9FE5
        723A61DD963B4549249209524924929B4924924A5249249294924924A5249249
        294AAE635CEA5ED68739E47B431DB1D3FC97FE6FFAFD35690ECFA43E0929A588
        CCA632C1932FB09FA7BA58447F826FE8F67FC27E8FFEDC569898F07E09D88152
        477D077C0A81FE89FF005BFE0A6EFA0EF81503FD13FEB7FC120A478FF99F0FE0
        AD2AB8FF0099F0FE0AD22A7FFFD5F4BC8FCFF87F0531FD147FC5FF00050C8FCF
        F87F0531FD147FC5FF000494E17AB67EFBBEF297AB67EFBBEF28F8EE218D0D78
        680F9B41706CB7DBFE77E77B149F6138EE697343034066D7993AFD1757BBFADF
        E0D48C43CDB38603B198E700E71992753CB91B6B7F747DC8583FD159F3FCAE47
        4C3BB24768B1DADFDD1F725B5BFBA3EE524904B1DADFDD1F725B5BFBA3EE5249
        2527F4AAFDC6FDC12F4AAFDC6FDC14D2494C3D2ABF71BF704BD2ABF71BF70534
        92530F4AAFDC6FDC12F4AAFDC6FDC14D2494C3D2ABF71BF704BD2ABF71BF7053
        492530F4AAFDC6FDC10AE14560B9E18C681AB9D00056157CA63ACADCC690D73C
        6D9737701FD9FCE494C3F424B9ADDA5CC1EE02244FD1DDFB8A7BEB6187BDAD3E
        05C02062E20C4ADF535DBAB277341003869EEDCE67D3FF00B6D65753EAF5E166
        32ABDAE6516BDEDFB498D8D7EEF656EFDCF53DDEF7FF00E94F4DF0871144A5C2
        1DDF5A97B5CD6BDAE741301C094E7FA27FD6FF0082E73A6F5219C2FBABADEDA6
        B160AAD7081600C76E735BF4FE9EEFFD5BEA575F47FF00693FEB7FC12C90E034
        11197123C7FCCF87F056955C7FCCF87F05693173FFD6F4BC8FCFF87F0531FD14
        7FC5FF00050C8FCFF87F046A7F9967F547E4494E0FD9EEFDDFC425F67BBF77F1
        0BA2491E22B38039B8AE6D74318F30E1323E6E45F559E3F82B8920B80AD1A7EA
        B3C7F04BD5678FE0AEA4925A5EAB3C7F04BD5678FE0AEA49290FDA68FDEFC0A5
        F69A3F7BF028C924A43F69A3F7BF0297DA68FDEFC0A3249290FDA68FDEFC0A5F
        69A3F7BF028C924A43F69A3F7BF0297DA68FDEFC0A3249290FDA68FDEFC0A83F
        2292643BB7815652494D437564101DCF92C9CDA68BC5B4DC3D4AAD2E2E696587
        93BBE9555D8CDECFDFAECFF85AD742993A13313A2242DC0A6A66B5D676B76398
        C60ADEC025AEA9BFCED75B18C66E5B5FF693FEB7FC1190EEFE69FF00D53F9129
        CCC8D9446222871FF33E1FC15A5571FF0033E1FC15A4D5CFFFD7F4BC8FCFF87F
        046A7F9967F547E441C8FCFF0087F046A7F9967F547E4494D6CBCA7D17D43756
        1AF65848B5FE9B65A6ADBEFDB67BBDEEF621D19975B634EF616BB20B3F4643DB
        B7D1F576B6CDACDDFA5F7FFE06AC6462BAF0586E7B18F696B98D0C820FD2FA75
        BDFF00F4D45D88E706975F69731DB98E8AE418733FD1ECFA367E7A4A46CCB70C
        EB6A7B8B6AAC3C9910D003719FFCE7F23D5B7F3FFEF8A1575121AC6DB762B880
        03DE2F127F79DB7D3FFA28F5E21AF25D79797121C0820027736866EF6FFE16FD
        C4A9A736B6B18EB98F6B40049ADDB881FCAF5BE9FF002FD3494BE6DDE8D4D707
        169DED93CFB5A7D4BFFF0065D96FFE8BFD22165645CCB2EAEBDC62BADEC0C124
        6E7BDB6BB77A77FE6FE67A6FF67F36AD3AA0EB1961249AE768ED263DDFD7DBEC
        DDFB881F611E9DB5B5C5ADB2A1434113B40F536FF5B636DDA9290E3DD9AED80E
        E71F5A1FB9AE6FE8F63BF39F8F8FFE15BBFD8CFF0083F53DEB4950ABA7FA77D7
        6C52DF4C93FA2ABD37196B99B777A8FF006FBF7ABE9294924924A52492492949
        24924A5249249294924924A5249249294A177F32FF00EA9FC8A6A177F32FFEA9
        FC8929063FE67C3F82B4AAE3FE67C3F82B4929FFD0F4BC8FCFF87F0527FF0041
        3FF147FEA54723F3FE1FC149FF00D04FFC51FF00A9494C32FEC98B8D6643EA69
        6D4D2F20344E8B3BF69B1955EEB701BEAD3536FD8C735C0B1E1CEDCE739B5EDD
        9B36D9B1967FC17A8B4EF7E1DF4BE9B6C61AEC05AE1B8090551FD998269B6A39
        8F26E636B7D85D5EEF4D836B6BFE6F66DFF84F4FD5FF00844354A3BBA9D35B66
        BC363C578EDC9BE4805AD7FE6D7FA37FAAFF00A5F4FD3511D6FA717BDC686371
        DBBDA2D73482F2C6EE736AFD0FA2EFDCD8FC8AECFF0083457F4BE9F63035F96E
        23D314D8775637D6D3B9B5D9FA3FCCFF00495FA76FFC224EE95D25C4B5D6EEA0
        B9CF18E5CDF4C39E3639EDF6FADFF827A68940614754C5B18F2FC6632D869AB1
        C03EA38BF76D6EDB69A19F9BF4D96595FF00C221FED66FA34DFF0061636AB6B2
        F7DAFDDE9B4EE357A6EB29C7BFF777FBFD3566BE9BD29A775EF665BB6B58D75E
        6B796B59F45ADF6B19FDBFE7141BD2FA7B31BEC8CCB73718B40B2B6BEB01FAEE
        DCF77A7BF7BFE858FAECAFF469290BFAD62D55FDA2CC461C62F7D4CB590E739C
        C1BBE87A6C66CB3DDE9BFD4FFADA77758A2A3E95D84D192EF4CD55D7FA4045A1
        CE6BB732BDFF00A3DAEF53D3AECFF82F55586F4DE9ACB25B790C0E7BD949730B
        1AF78DAFB1A1CDDEEFEA5965957FC1A857D27A556D965A1976F6D82E69ADAE69
        67B5BB5ACAD946CF73BFC07E93FC224A44FEAB5B5ACB1B8953A92D26CBBF49E9
        B1CD77A5E939EDC4B1EC7FE7FE92BAD6BB68C72D0EF4ABD44E8011FE76D59DFB
        3707D1763FDB2C14DBADB5EFAE2C24B9CF73BF47BD8FB377E93D0F496936FC66
        80D16B000200DC1252FF0066C7FF0044CFF3425F66C7FF0044CFF3425F69C7FF
        004ACFF3825F69C7FF004ACFF3824A57D9B1FF00D133FCD097D9B1FF00D133FC
        D097DA71FF00D2B3FCE097DA71FF00D2B3FCE09295F66C7FF44CFF003425F66C
        7FF44CFF003425F69C7FF4ACFF003825F69C7FF4ACFF003824A57D9B1FFD133F
        CD097D9B1FFD133FCD097DA71FFD2B3FCE097DA71FFD2B3FCE09295F66C7FF00
        44CFF3425F66C7FF0044CFF3425F69C7FF004ACFF3825F69C7FF004ACFF3824A
        57D9B1FF00D133FCD0A0CFE82DFF008A1FF52A7F69C7FF004ACFF382833FA0B7
        FE287FD4A4A638FF0099F0FE0AD2AB8FF99F0FE0AD24A7FFD1F4BC8FCFF87F04
        6A7F9967F547E441C8FCFF0087F046A8C52C3E0D1F9125244900D8F9E63E497A
        8FF1FC125274903D47F8FE097A8FF1FC125274903D47F8FE097A8FF1FC125274
        903D47F8FE097A8FF1FC125274903D47F8FE097A8FF1FC125274903D47F8FE09
        7A8FF1FC125274903D47F8FE097A8FF1FC125274903D47F8FE097A8FF1FC1252
        74903D47F8FE097A8FF1FC125274903D47F8FE097A8FF1FC1252750BBF997FF5
        4FE443163E799F929DA66979F169FC89290E3FE67C3F82B4AAE3FE67C3F82B49
        29FFD2F4BC8FCFF87F046AFF00986FF507E441C8FCFF0087F046AFF986FF0050
        7E4494E3F5A6BDEEC0A43EC636DC92DB3D27BEA24369C9B76FAB53AB7ECDF535
        FF00CE27ABA2E39FA56E51FF00D0BC8FFDE852EAB5DE5F857534BF23ECF906CB
        2BACB03B69A6FA3737ED1650CFA77B7FC22233A9E4B7FEF2F2FF00CEC6FF00DE
        D4ED68515BA59B0D3C6BAEA3A490CB1E5C332CC66D9638D8F0C7663B0DAEDD6F
        A9BDF5D2EFD17A9EA7E67ABEA7F368389D4FA83FA9331AD78350BBD204012F6B
        3F6A55EA5BFA3AF65D63F068F5595FE8FF00D17A7EA595ABB8584FB3A73AAC96
        3E87D97DD7B5A4B4BD84E4D9998AEF6BACA77B375566CFD257FE0ADF51428E89
        4D39ACCAADF0439B65A0B46EB1FB72D965B6B99B3DF63F3BD4FE6FD3AFD2F4AA
        FD17A7E903F3148F94206E4F56FB35EE69B5D90316D7D8C7541A2BC9686FA54E
        1FE8EBFB5D3BFD7FF0999FCD51FA5FD27EB0B2AFCF17073726DAD8CA672C35B4
        B6BA6D22B7D4DB5CFAF31F55367E95F93E9D999F66AFD1B6DF4F17F4965BCDE8
        7D372E9BDBF66A5975ED78F5FD2697873C3BF4DBBE9BDFBDDBFF009C44BB1F3C
        E4BAEC6C96318FADAC355B5BAC00B0D8EF519B2EC7D8FB3D56B2DFD1FF008241
        2D36754BDB8AC7646462E35B65B90C73EF7E8D155B654D6D557EAFF6B6318D6D
        7BFD4C7FCCB7F49FCDA2F49EA6DCCDAD6E4D390D7562C10E0DC868F6FE8F2719
        9EA337D7BFF4B7B2CAEBF57F45F66AD1AEC2C8B30BD016B69B4B8BDCFA58EAD8
        49739EEDCDAAEAEE6EFDDBEDF4F32BB2CB3F9DFD15965563F4FC3BF118F6DD79
        BCB8C812F207F57ED1765DFBECFF00C31E9FFA2AABB7D4B2C4A6DA4924929492
        4924A5249249294924924A5249249294924924A52359FD1DDFD43F91051ACFE8
        EEFEA1FC89290E3FE67C3F82B4AAE3FE67C3F82B4929FFD3F4BC8FCFF87F046A
        FF00986FF507E441C8FCFF0087F046AFF986FF00507E4494D7B0BC1635A402F3
        1244C68E7FEF7F254BD1CAFDE67F9A7FF4A2859F4EAFEB9FFA9B1472AD60C86B
        2BB36E4013B4BC80E10EDAD6D5BB639EF7FF0023FF0045A04A425F472BF799FE
        69FF00D2897A395FBCCFF34FFE945445AC8D6F7FD9A0136EF33EA6D77E8FD4DD
        BFFB1FE93F47FF0006ADD2C2FB6B712F0F6343AE1BDDB7711FCDFA7BB67F2FF9
        BFFAB4BAD2172CB8004D8DF930FF00E944C7D61F9E3FCCFF00D4CA576F2D2184
        35DB742479B9566DB7D8F0D2D0CD9FCE13DCFEEB7FEAFF00D7F482D2945C1B60
        658F6CBE3D3FCD24FE937B5ADDCFDEFD9539E885EC0F159700F702E6B67521BB
        7739ADFDC66E6ACEEA22D6D98D9156C2EA2CACEDB1CE6071B7ED384D6EEAABBD
        FBFD6C9ABFC1FF00DB6A38D83943AC7ED0BAA631D6D3632CF4DCD780671BD2FD
        2FA38973DF67A56FF39F68F4FF00C15B5FA9E9A23643A3FA575A58C21A000751
        33BB77F2ABFDD53F472BF799FE69FF00D28953FD29DFD46FE5B14312CA9D7DA2
        AB773468585E5E77349DEEDAF73DD537F33FD58975532F4B201F73D806BF9A7F
        F4A2622D1F9EDFF33FF5223DDC7C9DF9152BEDB6A7EEDBBEB708000D41FF00D4
        9FEBFF000894CDEEB5AD73B7365A0BA0B39DA377FA44EDCAC67643B19B6B1D91
        58DCFA4381781EDF73AAFA6C67B9A863D4F41FEAC6E2C7981DBDAEF6AE7F2A9B
        6AEAF926B75993435DAE31163EA0EB47AB7B5D553D3332967AF4DFB3F4767DA3
        D3B6EB6DB7D5C8B120A7A436B4E39BAA735ED2CDEC7032D223735CD733E9B14C
        55924487323FAA7FF4A2A986DD9D1A866C755B7198DF4EC32F6ED637DB6FB6BF
        7D7FE17F475FFC52B199654CA00B1E6B7389159DE58376BEE739AE67B19F4FDE
        914849E8E57EF33FCD3FFA5144B2E0013637E4C3FF00A5142BB697E645774BB6
        C58D2F2438C35CDF4EADDEDF67BF7D6CFF00BFA25DBCB48610D76DD091E6E490
        C4FAC3F3C7F99FFA9941F90CA1AF7E4D8C654C0D71B1DFA368DC5CDF739EED9F
        4DAD436DB7D8F0D2D0CD9FCE13DCFEEB7FEAFF00D7F495FAA90CA3D704B6DA7D
        334BDB321EF7DB8BED6B29CCDEFB197B99B3ECF67FD6FF009CAD03AA9BEDBE97
        ECD8F6BBD56EFAE083B9BEDFD237F7D9FA56FBFF00F4A2B367F4777F50FE45CF
        F4A7DAFCCADAFC67D7E9D571F58FAA0175B6D36DBEAFDA30F0D9EADEF6BACAFD
        0FD1D7B2CFD1575FA5E9F4167F4777F50FE4454871FF0033E1FC15A5571FF33E
        1FC15A494FFFD4F4BC8FCFF87F046AFF00986FF507E441C8FCFF0087F046AFF9
        86FF00507E4494D6B03A58E6B4BB6BA48044FD1733F3FF00ACA7F6AB7FD0BBEF
        6FFE9443B5AD73AA6B80734BF50448FA36299A709B60A8B59EA3817066D04C0F
        CEDBB503BA57FB55BFE85DF7B7FF004A25F6AB7FD0BBEF6FFE945165585635CE
        AEB1EDD08757B48FECB9B5BD33EAC70E815B06A401B5BFF91490A73DCE20EC78
        2047E69FFD18A24B8FE63FEE67FE944C594824063246B1B5BFF91507640A1F45
        4D602DBEFB2A10636C0BF2376DFF00AC6CD89016964EC7AEF0FAEFA83EA735AD
        2CB435C090E73BE8EE7B3F39A9B1FA7E0633CD98D8D550F23697D6C6B091FBBB
        98DFA1ED6A963E47AD6E4D7B76FD9EC15CCCCEEAEAC8DDFC8FE7F629554D0EAD
        F63EB0E21CF2486EE27DCEFCDDBBDC96C85C39D5DC5E185C0B5A0411D8BBF7DD
        5FEF29FDAADFF42EFBDBFF00A51081E9E76C309DD203454E246D3B5DB9BE9EF6
        7D2FF0888EC7C76C815339035683DBFAA92946F73B4353C082342DEFFF005C50
        977EE3FEE6FF00E944C594005DB190264ED6F6FECA6D9587B0B5AD69DFC86807
        E8D9FB9FD5412B3838B5E031E4B9AE689DA0491B7FD228DDD2FA65F61B6FC4A6
        DB5D1BAC7D6D738C0DADDCE7B7F716651F5AB1AF6E3EDA62DC8754DD9EB5060D
        AE631DED65D6653FD3DDFF0071EBB3FD2FA7FA4F4F71102908DD535B8E6AA9A1
        AD0C2C630000011B1AD6B7F318A6326C000153BEF6FF00E944E9254A57DAACFF
        0042EFBDBFFA5141CF73883B1E0811F9A7FF004629A49529112E3F98FF00B99F
        FA5145D8F5DE1F5DF507D4E6B5A59686B8121CE77D1DD633F39A8E9254A6BE3F
        4FC0C679B31B1AAA1E46D2FAD8D6123F77731BF43DAD57ACFE8EEFEA1FC8828D
        67F4777F50FE4454871FF33E1FC15A5571FF0033E1FC15A494FF00FFD5F4BC8F
        CFF87F046AFF00986FF507E441C8FCFF0087F045AF5A183C583F224A6BD9F4EA
        FEB9FF00A9B14EDAEF764D763034B18D7024B8832EDBF9BB7F93FBEA36565C46
        A5AE6990444F0E67E7FF005937A6FF00F4AFFB9BFF0091408532A6BBD8C79BDA
        C163C82E731C5D27FB6D66D6B3FC1B3F48877D6CB65A4C39AE25AE1C832A5E9B
        FF00D2BFEE6FFE45235BC9936124F72D67FE934A8A90D75EC05CE3BAC77D277F
        DF5BFC840BFA7BF32DB1E5E2BD8D7B719E0496DAEB7ED1EB58DFA0F656FC5C37
        D4CDFF00A4FD3576FE8ACAD5DF4DDFBE7FCD67FE93526336B62649249279249D
        CEFF00AA480535B06ABD9665D97B431D75CD7B4076E11E8D153B6BBF46FD9EB5
        56B3F495D7FF0014ACE3EFF45FB0073B73E013B41F73BF3B6BF6A74315384EDB
        1CD049300374DC77FEEA454C461DFB6B880F0E712F163E5A1CE6BF6FD1FD63E8
        FF0086D8AC5C60FCC7E47217A6FF00F4AFFB9BFF00914FB1F047AAE20F62187F
        F45A54A6B3B15A5E435C5B538EE7563C7FF21FEBFF001647B1AF6B6B32D6B9DB
        7DA4B481B2DFA2E67BD9FD76227A6EFDF3FE6B3FF49A42A3209797069DC04340
        98733F35B5FEF2549717131324BD872B1F3985ECAD8F68CA3E9B2CF77DA2E6BB
        F68D973AAB3737D9E9FA95D757FA5B16EA492285249249294924924A52492492
        948D67F4777F50FE4410093004946B34A1E3C187F224A438FF0099F0FE0AD2AB
        8FF99F0FE0AD24A7FFD6F4BC8FCFF87F046A7F9967F547E441C8FCFF0087F046
        A7F9967F547E4494912433754D3B5CF682390480537DA28FF4ACFF003824A4A9
        217DA28FF4ACFF003825F68A3FD2B3FCE09292A485F68A3FD2B3FCE097DA28FF
        004ACFF3824A4A9217DA28FF004ACFF3825F68A3FD2B3FCE09292A485F68A3FD
        2B3FCE097DA28FF4ACFF003824A4A928B5CD70DCD320F046A144DB534C178691
        D89012524490FD6A7FD237EF097AD4FF00A46FDE12524490FD6A7FD237EF097A
        D4FF00A46FDE12524490FD6A7FD237EF097AD4FF00A46FDE12524490FD6A7FD2
        37EF097AD4FF00A46FDE1252450BBF997FF54FE44C2DA9C603DAE27B020A7BBF
        997FF54FE4494831FF0033E1FC15A5571FF33E1FC15A494FFFD7F4BC8FCFF87F
        05397371370D0B6B907CE14323F3FE1FC14CFF00423FF15FF7D4948F5612C612
        D6B4C000A5BDFF00BC7EF49FF4DDF1299252FBDFFBC7EF41FB7D3F6CFB0FA87E
        D3E9FAFE9C3BF9BDDE96EDDF43E9FE67A9EA22AE6FAEE2D6EEA2FCE6D7F69BAA
        C6F4598B6E15B935B9D2EC86B9B7B3D3A58FB37359BFF49E9FBD253B17F5BC0C
        7FB57AD796FD87D3FB4FB5E767ABFCD7D06FBFD4DDFE0FD441EA7F58B17A6DD6
        557B6D73AAA1B92E2C0082C75ADC66B5BBACAFDFEA3BFEDB5CFF00ECABF23A5F
        516E3525B99D42BC779C36E33F16AACD2E6FAB5D56647E81EFF73FFC27E93F9D
        41FAD2CCCC8C8CCCBBF12EC5A6BC2AD953DCE0438FDA69FE75D8EEB28DFF00A5
        B7F40FB2CFF4BFE8FD34A7ACCCEB58783BCE53EEADB5C6FB7D1B9D58DDB76FE9
        D95D947E7B59FCE7F3BFA253A3A9577E6E5E13378B70BD3F55C7E89F51BEAB36
        FBBF73F9CF52BAD53EAD8997D4DF5F4F351AF07D46D997738B62C6336B9B8D53
        58EF5F7D8FDBEA3FF57F4BD2FF0009EA7E905D2FFF00149D73FF00417FF3DB92
        53B7BDFF00BC7EF4B7BFF78FDE992494B35EE6D9639BC9ACB89F123E8FFD52B5
        5B4318D681000E153FCF7FFC53FF00EFAAF37E88494BAAC7368F58D037B9ED21
        AEDB5BDCD0486BDBBAD6B3D36FB1CD77D35655063F228C8C9231ACB596D81ED7
        30D711E9D557F85BAB7FD2ADDF98929B55DCCB1F6B1B20D2F0C74F8ED65BA7F6
        6C507E5542AF5412E6FA829D3F78D9F66FCEFDCB554C5FB50BB36D226CF55ADF
        B3B5C0D73E9D1B6DF55F5B2EFA3FCE7F23F9AAACB3F9C8DB4DF8D40A9EEF558E
        BE878B44361EEBA8F5DAE6FF00C25CEB2FAFF9CFF45FA3F4EAF5129D17D8C63A
        B6B8C1B1DB583C4C3ACDBFE656E5019357A4EB46E731A5CD21AD738CB5C6A7FB
        18DDEEF7B7F7156CA7639B48B3D70F601E99AEBB1CD63BE97A95BEAA9EC73FDD
        B3F49EA57E9EFABD3F4ECC86592C7754C658EC665CE0369F49CD730927E9398E
        CAF4B73DFF004EDFD27F39FA4FE76CB3D44A6633E87566C66F86D8CA5CD735CC
        7073CD6D6EE6DA18FF00F0D5BFFA8ADACDBE97D58BBAC20DB6E4D36584713EB5
        2D6B1B3FE8EA6D74EFD8CF53F9CD9EA58B492530B1AD7B0B5C2411C28125D8A4
        9324B249F922BBE89411FD0FFEB7FF007D494C31FF0033E1FC15A5571FF33E1F
        C15A494FFFD0F4BC8FCFF87F0446B77E30671B9804FC421E47E7FC3F82353FCC
        B3FAA3F224A6B39CFDC7756F04EA401207F6989B73BFD1BFFCD2AF24929A3B9D
        FE8DFF00E694B73BFD1BFF00CD2AF24929A3B9DFE8DFFE694B73BFD1BFFCD2AF
        24929A3B9DFE8DFF00E694B73BFD1BFF00CD2AF24929A3B9DFE8DFFE694B73BF
        D1BFFCD2AF24929A7554E797B882C0E61609E4CFE76DFECA30B6006B98E040D6
        0123FCE6A32492917AE3F71FFE694BD71FB8FF00F34A2A492917AE3F71FF00E6
        94BD71FB8FFF0034A2A492917AE3F71FFE694BD71FB8FF00F34A2A492917AE3F
        71FF00E694BD71FB8FFF0034A2A492909B6416B58E248D0105BFF49C93DBB719
        CD99DAC227E48CA177F32FFEA9FC8929063FE67C3F82B4AAE3FE67C3F82B4929
        FFD1F4DB47BCC8D0A131D75636B0B5CDEC1C38FF00315B735AEE44A6F499E092
        907AF93E0CFC52F5F27C19F8A3FA4CF04BD267824A41EBE4F833F14BD7C9F067
        E28FE933C12F499E092907AF93E0CFC52F5F27C19F8A3FA4CF04BD267824A41E
        BE4F833F14BD7C9F067E28FE933C12F499E092907AF93E0CFC52F5F27C19F8A3
        FA4CF04BD267824A41EBE4F833F14BD7C9F067E28FE933C12F499E092907AF93
        E0CFC52F5F27C19F8A3FA4CF04BD267824A41EBE4F833F14BD7C9F067E28FE93
        3C12F499E092907AF93E0CFC52F5F27C19F8A3FA4CF04BD267824A41EBE4F833
        F14BD7C9F067E28FE933C12F499E092907AF93E0CFC541EEBAC1B5E5AD6F70D1
        CFF9EAD7A4CF04BD267824A4550F7881A056145AD6B7810A4929FFD9}
      ExplicitHeight = 560
    end
    object btnListLoad: TSpeedButton
      Left = 69
      Top = 240
      Width = 45
      Height = 17
      Cursor = crHandPoint
      Flat = True
      Visible = False
      OnClick = btnListLoadClick
    end
    object btnDetail: TSpeedButton
      Left = 116
      Top = 240
      Width = 68
      Height = 17
      Cursor = crHandPoint
      Flat = True
      Visible = False
      OnClick = btnDetailClick
    end
    object btnSend: TSpeedButton
      Left = 14
      Top = 510
      Width = 87
      Height = 24
      Cursor = crHandPoint
      Flat = True
      OnClick = btnSendClick
    end
    object btnNew: TSpeedButton
      Left = 103
      Top = 510
      Width = 82
      Height = 24
      Cursor = crHandPoint
      Flat = True
    end
    object btnSch: TSpeedButton
      Left = 140
      Top = 49
      Width = 45
      Height = 17
      Cursor = crHandPoint
      Flat = True
      OnClick = btnSchClick
    end
    object LblMemcontentSize: TLabel
      Left = 71
      Top = 209
      Width = 19
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LblMemcontentSize'
      Color = 16773866
      ParentColor = False
    end
    object btnChar: TSpeedButton
      Left = 15
      Top = 208
      Width = 52
      Height = 20
      Cursor = crHandPoint
      Caption = #53945#49688#47928#51088
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      OnClick = btnCharClick
    end
    object Label5: TLabel
      Left = 99
      Top = 210
      Width = 12
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '90'
      Color = 16773866
      ParentColor = False
    end
    object memContent: TMemo
      Left = 30
      Top = 90
      Width = 136
      Height = 106
      BorderStyle = bsNone
      Color = 16773866
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'memContent')
      ParentFont = False
      TabOrder = 0
      OnChange = memContentChange
    end
    object edtSendNo: TEdit
      Left = 19
      Top = 402
      Width = 162
      Height = 11
      BorderStyle = bsNone
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtSendNo'
      OnExit = edtSendNoExit
      OnKeyPress = edtSendNoKeyPress
    end
    object yeyakDayEdit: TDateTimePicker
      Left = 20
      Top = 449
      Width = 161
      Height = 21
      Date = 37989.000000000000000000
      Time = 0.432708865700988100
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 2
    end
    object edtSch: TEdit
      Left = 19
      Top = 52
      Width = 108
      Height = 11
      BorderStyle = bsNone
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
      Text = 'edtSch'
      OnKeyPress = edtSchKeyPress
    end
    object Panel3: TPanel
      Left = 65
      Top = 235
      Width = 126
      Height = 26
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      object Button1: TButton
        Left = 78
        Top = 4
        Width = 41
        Height = 17
        Hint = 
          #50641#49472#51088#47308' '#44032#51256#50732#49884' 97~2003'#51004#47196' '#46384#47196' '#51200#51109#54616#49884#44256#13#10#54869#51109#51088' .xls'#47196' '#51200#51109#54616#49888#54980' '#48520#47084#50724#49464#50836'.'#13#10#50641#49472#51008' '#52395#48264#51704' '#52860#47100 +
          #48512#53552' '#49457#47749' '#51204#54868#48264#54840' '#49692#51060#50696#50836'.'#13#10#45824#47049#51204#49569#51008' '#54620#44148' '#54620#44148' '#51204#49569#50668#48512#47484' '#47932#50612#48372#45716' '#48169#49885#51060#47728','#13#10#47588' '#51204#49569#44148#47560#45796' '#51204#49569' '#54869#51064#51012' '#54644 +
          #50556#54633#45768#45796'.'#13#10#45908' '#54200#47532#54620' '#45824#47049#51204#49569#50640' '#44288#54644#49436#45716' '#44288#47532#51088#50640#44172' '#47928#51032#54616#49464#50836'.'
        Caption = 'Excel'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object chkSendMMS: TCheckBox
      Left = 18
      Top = 557
      Width = 166
      Height = 17
      Caption = '90'#48148#51060#53944' '#51060#49345' LMS'#47196' '#51204#49569
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
    object grdSendList: TAdvStringGrid
      Left = 15
      Top = 257
      Width = 171
      Height = 125
      Cursor = crDefault
      Hint = 
        #49325#51228#49884' '#54644#45817#46972#51064#51032' '#52395#48264#51704' '#52972#47100#51012' '#45908#48660' '#53364#47533#54616#49464#50836'.'#13#10#52628#44032#49884' insert'#47484' '#45572#47476#49464#50836'.'#13#10#50641#49472#51088#47308' '#44032#51256#50732#49884' 97~200' +
        '3'#51004#47196' '#46384#47196' '#51200#51109#54616#49884#44256#13#10#54869#51109#51088' .xls'#47196' '#51200#51109#54616#49888#54980' '#48520#47084#50724#49464#50836'.'#13#10#50641#49472#51008' '#52395#48264#51704' '#52860#47100#48512#53552' '#49457#47749' '#51204#54868#48264#54840' '#49692#51060#50696#50836'.' +
        #13#10#45824#47049#51204#49569#51008' '#54620#44148' '#54620#44148' '#51204#49569#50668#48512#47484' '#47932#50612#48372#45716' '#48169#49885#51060#47728','#13#10#47588' '#51204#49569#44148#47560#45796' '#51204#49569' '#54869#51064#51012' '#54644#50556#54633#45768#45796'.'#13#10#45908' '#54200#47532#54620' '#45824#47049#51204 +
        #49569#50640' '#44288#54644#49436#45716' '#44288#47532#51088#50640#44172' '#47928#51032#54616#49464#50836'.'
      ColCount = 3
      Ctl3D = True
      DefaultRowHeight = 20
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 10
      GridFixedLineColor = clSilver
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = grdSendListGetAlignment
      OnDblClickCell = grdSendListDblClickCell
      OnEditCellDone = grdSendListEditCellDone
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #49457#47749
        #48264#54840)
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
      FixedColWidth = 18
      FixedRowHeight = 20
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = 4227200
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glStandard
      Navigation.AllowInsertRow = True
      Navigation.AdvanceInsert = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        18
        40
        91)
      RowHeights = (
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20)
    end
    object CheckBox1: TCheckBox
      Left = 18
      Top = 577
      Width = 178
      Height = 17
      Caption = #47700#49884#51648#51204#49569' '#54869#51064#52285' '#50504#48372#44592
      TabOrder = 11
    end
    object btnAutoset: TButton
      Left = 82
      Top = 600
      Width = 107
      Height = 24
      Caption = #51088#46041#51204#49569#49444#51221
      TabOrder = 8
      OnClick = btnAutosetClick
    end
    object CbYeyak: TCheckBox
      Left = 18
      Top = 430
      Width = 19
      Height = 17
      TabStop = False
      TabOrder = 5
    end
    object CMTime: TComboBox
      Left = 21
      Top = 472
      Width = 36
      Height = 21
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      TabOrder = 3
      Text = 'CMTime'
    end
    object CmMinute: TComboBox
      Left = 74
      Top = 472
      Width = 36
      Height = 21
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      TabOrder = 4
      Text = 'CmMinute'
    end
  end
  object pnlContentsSave: TPanel
    Left = 370
    Top = 250
    Width = 165
    Height = 221
    BevelOuter = bvNone
    Caption = 'pnlContentsSave'
    Color = clWhite
    DragKind = dkDock
    TabOrder = 3
    Visible = False
    object pnlSaveButton: TPanel
      Left = 0
      Top = 158
      Width = 165
      Height = 63
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlSaveButton'
      Color = clWhite
      TabOrder = 0
      object Label3: TLabel
        Left = 10
        Top = 9
        Width = 22
        Height = 13
        Caption = #51228#47785
      end
      object Label4: TLabel
        Left = 10
        Top = 38
        Width = 22
        Height = 13
        Caption = #48264#54840
        Visible = False
      end
      object EdtContNo: TEdit
        Left = 45
        Top = 35
        Width = 109
        Height = 21
        Enabled = False
        ImeName = 'Microsoft IME 2003'
        TabOrder = 2
        Text = 'EdtContNo'
        Visible = False
      end
      object btnSave: TButton
        Left = 6
        Top = 31
        Width = 70
        Height = 25
        Caption = #51200#51109
        TabOrder = 0
        OnClick = btnSaveClick
      end
      object btnCls: TButton
        Left = 83
        Top = 31
        Width = 70
        Height = 25
        Caption = #45803#44592
        TabOrder = 1
        OnClick = btnClsClick
      end
      object EdtContName: TEdit
        Left = 45
        Top = 5
        Width = 110
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 3
        Text = 'EdtContName'
      end
    end
    object pnlSmsCont: TPanel
      Left = 0
      Top = 0
      Width = 165
      Height = 158
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 165
        Height = 158
        Align = alClient
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
      end
      object memSmsContentsSave: TMemo
        Left = 14
        Top = 34
        Width = 136
        Height = 106
        BorderStyle = bsNone
        Color = 16773866
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        Lines.Strings = (
          'memSmsContentsSave')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlSend: TPanel
    Left = 509
    Top = 221
    Width = 796
    Height = 631
    BevelOuter = bvNone
    Caption = 'pnlSend'
    Color = clWhite
    TabOrder = 4
    object Splitter1: TSplitter
      Left = 0
      Top = 236
      Width = 796
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object PnlFindResult: TPanel
      Left = 0
      Top = 22
      Width = 796
      Height = 214
      Align = alTop
      BevelOuter = bvNone
      Caption = 'PnlFindResult'
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object pnlChoiceMenu: TPanel
        Left = 0
        Top = 173
        Width = 796
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pnlChoiceMenu'
        Color = clWhite
        TabOrder = 0
        object cbExclusive: TCheckBox
          Left = 195
          Top = 10
          Width = 109
          Height = 17
          Caption = '('#51473#48373#48264#54840' '#51228#44144')'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object btnChoice: TButton
          Left = 313
          Top = 7
          Width = 107
          Height = 24
          Caption = #48372#45244' '#47532#49828#53944#54632#51004#47196
          TabOrder = 0
          OnClick = btnChoiceClick
        end
        object btnHP: TButton
          Left = 10
          Top = 7
          Width = 181
          Height = 24
          Caption = #54648#46300#54256#47564' '#49440#53469'('#51204#49569#44552#51648#51228#50808')'
          TabOrder = 1
          OnClick = btnHPClick
        end
        object btnDSend: TButton
          Left = 423
          Top = 7
          Width = 100
          Height = 25
          Caption = #47784#46160' '#51648#44552' '#48372#45236#44592
          TabOrder = 2
          OnClick = btnDSendClick
        end
        object btnDel: TButton
          Left = 539
          Top = 7
          Width = 112
          Height = 25
          Caption = #47784#46160' '#49325#51228
          TabOrder = 3
          OnClick = btnDelClick
        end
      end
      object GrdChoice: TAdvStringGrid
        Left = 0
        Top = 17
        Width = 666
        Height = 95
        Cursor = crDefault
        ColCount = 15
        Ctl3D = True
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        OnClickCell = GrdChoiceClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #54869#51064'  '
          #52320#53944'  '
          #49457#47749'  '
          #45208#51060'  '
          #51452#49548'  '
          #54648#46300#54256
          #50696#50557#51068
          #50696#50557#49884#44036
          #52264#53944#48264#54840
          #50696#50557#45236#50857
          #44396#44036
          ''
          #51652#47308#49892)
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'grid_choice'
        ColumnSize.Location = clIniFile
        ControlLook.FixedGradientHoverFrom = 13619409
        ControlLook.FixedGradientHoverTo = 12502728
        ControlLook.FixedGradientHoverMirrorFrom = 12502728
        ControlLook.FixedGradientHoverMirrorTo = 11254975
        ControlLook.FixedGradientDownFrom = 8816520
        ControlLook.FixedGradientDownTo = 7568510
        ControlLook.FixedGradientDownMirrorFrom = 7568510
        ControlLook.FixedGradientDownMirrorTo = 6452086
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
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        Version = '8.4.4.1'
        ColWidths = (
          32
          41
          83
          76
          49
          64
          101
          64
          46
          64
          223
          71
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
    object PnlChoice: TPanel
      Left = 80
      Top = 285
      Width = 796
      Height = 261
      BevelOuter = bvNone
      Caption = 'PnlChoice'
      Color = clWhite
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 796
      Height = 22
      Align = alTop
      Color = clWhite
      TabOrder = 2
      object Label6: TLabel
        Left = 10
        Top = 5
        Width = 166
        Height = 13
        AutoSize = False
        Caption = #9632' SMS'#47484' '#51204#49569' '#54624' '#44256#44061' '#44160#49353
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object Button2: TButton
        Left = 245
        Top = 0
        Width = 75
        Height = 21
        Caption = 'Excel'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
    object GrdSms: TAdvStringGrid
      Left = -30
      Top = 245
      Width = 579
      Height = 124
      Cursor = crDefault
      ColCount = 15
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 3
      HoverRowCells = [hcNormal, hcSelected]
      OnClickCell = GrdSmsClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #49457#47749
        #48264#54840
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
      ColumnSize.Section = 'grid_sms'
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
        32
        64
        64
        64
        72
        21
        167
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
  object pnlAutoSend: TAdvPanel
    Left = 583
    Top = 466
    Width = 246
    Height = 371
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #9679#51088#46041' '#51204#49569' '#49444#51221
    Caption.TopIndent = 3
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object AdvPanel2: TAdvPanel
      Left = 3
      Top = 48
      Width = 235
      Height = 323
      BevelOuter = bvNone
      Color = 16381427
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      AutoHideChildren = False
      BorderColor = 16765615
      Caption.Color = 16316406
      Caption.ColorTo = 15261915
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = 'SMS '#51088#46041#51204#49569' '#49444#51221
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 15195349
      ColorMirror = 15195349
      ColorMirrorTo = 16513776
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = 7485192
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 16445163
      StatusBar.ColorTo = 15064023
      StatusBar.GradientDirection = gdVertical
      Text = ''
      FullHeight = 0
      object btnSp1: TSpeedButton
        Left = 159
        Top = 188
        Width = 52
        Height = 20
        Cursor = crHandPoint
        Caption = #53945#49688#47928#51088
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnSp1Click
      end
      object lblsmsLength: TLabel
        Left = 130
        Top = 30
        Width = 46
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Size 90/'
        Color = 16773866
        ParentColor = False
      end
      object Label8: TLabel
        Left = 180
        Top = 30
        Width = 12
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '90'
        Color = 16773866
        ParentColor = False
      end
      object EllipsLabel2: TLabel
        Left = 15
        Top = 30
        Width = 66
        Height = 13
        AutoSize = False
        Caption = 'SMS'#47700#49884#51648
        Transparent = True
      end
      object EllipsLabel3: TLabel
        Left = 15
        Top = 190
        Width = 61
        Height = 13
        AutoSize = False
        Caption = #48372#45236#45716#49884#44036
        Transparent = True
      end
      object EllipsLabel4: TLabel
        Left = 60
        Top = 216
        Width = 31
        Height = 13
        AutoSize = False
        Caption = #51068#51204
        Transparent = True
      end
      object EllipsLabel5: TLabel
        Left = 136
        Top = 215
        Width = 12
        Height = 12
        Caption = #49884
        Transparent = True
      end
      object EllipsLabel6: TLabel
        Left = 191
        Top = 215
        Width = 12
        Height = 12
        Caption = #48516
        Transparent = True
      end
      object EllipsLabel7: TLabel
        Left = 17
        Top = 250
        Width = 66
        Height = 13
        AutoSize = False
        Caption = #51088#46041' '#51204#49569
        Transparent = True
      end
      object EllipsLabel8: TLabel
        Left = 17
        Top = 276
        Width = 66
        Height = 13
        AutoSize = False
        Caption = #51204#49569#51204' '#54869#51064
        Transparent = True
        Visible = False
      end
      object cbbefortime: TComboBox
        Left = 95
        Top = 213
        Width = 40
        Height = 20
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        TabOrder = 0
        Text = '09'
        Items.Strings = (
          '08'
          '09'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23')
      end
      object cbbeformin: TComboBox
        Left = 152
        Top = 213
        Width = 40
        Height = 20
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = '30'
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
      object memSMS: TMemo
        Left = 15
        Top = 47
        Width = 183
        Height = 129
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -19
        Font.Name = #46027#50880
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          #50864#47532#45208#46972#45824#54620#48124#44397
          #47564#49464#50864#47532#45208#46972#45824#54620
          #48124#44397#47564#49464#50864#47532#45208#46972
          #45824#54620#48124#44397#47564#49464#50864#47532
          #45208#46972#45824#54620#48124#44397#47564#49464
          #50864#47532#45208#46972#45824)
        MaxLength = 250
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 2
        OnChange = memSMSChange
      end
      object edtbeforsms: TSpinEdit
        Left = 15
        Top = 213
        Width = 41
        Height = 21
        MaxValue = 100
        MinValue = 1
        TabOrder = 3
        Value = 1
      end
      object cbSms: TAdvComboBox
        Left = 94
        Top = 247
        Width = 75
        Height = 20
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 4
        Text = #50500#45768#50724
      end
      object cbCheck: TAdvComboBox
        Left = 94
        Top = 272
        Width = 75
        Height = 20
        Color = clWindow
        Version = '1.9.2.1'
        Visible = False
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 5
        Text = #50500#45768#50724
      end
    end
    object btnAutosetSave: TButton
      Left = 60
      Top = 345
      Width = 65
      Height = 24
      Caption = #51200#51109
      TabOrder = 2
      OnClick = btnAutosetSaveClick
    end
    object btnAutosetClose: TButton
      Left = 135
      Top = 345
      Width = 65
      Height = 24
      Caption = #45803#44592
      TabOrder = 3
      OnClick = btnAutosetCloseClick
    end
    object tabSms: TTabControl
      Left = 2
      Top = 22
      Width = 239
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Tabs.Strings = (
        #50696#50557' '
        #47532#53084
        #48120#45236#50896)
      TabIndex = 0
      OnChange = tabSmsChange
      OnChanging = tabSmsChanging
    end
  end
  object ListBox1: TListBox
    Left = 925
    Top = 5
    Width = 246
    Height = 176
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 13
    TabOrder = 7
    Visible = False
  end
  object tcViewMode: TTabControl
    Left = 351
    Top = 0
    Width = 21
    Height = 669
    Cursor = crHandPoint
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 5
    TabPosition = tpLeft
    Tabs.Strings = (
      #47928#51109#48372#44288#54632
      #48372#45244#47532#49828#53944)
    TabIndex = 0
    OnMouseDown = tcViewModeMouseDown
  end
  object imoPanel: TAdvPanel
    Left = 415
    Top = 53
    Width = 151
    Height = 162
    TabOrder = 8
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #9679#53945#49688#47928#51088
    Caption.TopIndent = 3
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object GrdImo: TAdvStringGrid
      Left = 8
      Top = 35
      Width = 96
      Height = 100
      Cursor = crDefault
      Ctl3D = True
      DefaultColWidth = 17
      DefaultRowHeight = 17
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 5
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnClickCell = GrdImoClickCell
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
      FixedColWidth = 17
      FixedRowHeight = 17
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
      Version = '8.4.4.1'
      ColWidths = (
        17
        17
        17
        17
        17)
    end
    object BtnName: TButton
      Left = 110
      Top = 28
      Width = 31
      Height = 20
      Hint = #54872#51088#47749
      Caption = '+ddd+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnNameClick
    end
    object spSkinButton2: TButton
      Left = 110
      Top = 49
      Width = 31
      Height = 20
      Hint = #48337#50896#47749
      Caption = '+aaa+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnNameClick
    end
    object spSkinButton3: TButton
      Left = 110
      Top = 70
      Width = 31
      Height = 20
      Hint = #50696#50557#51068
      Caption = '+dd+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnNameClick
    end
    object spSkinButton4: TButton
      Left = 110
      Top = 91
      Width = 31
      Height = 20
      Hint = #50696#50557#49884#44036
      Caption = '+hh+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BtnNameClick
    end
    object spSkinButton5: TButton
      Left = 110
      Top = 112
      Width = 31
      Height = 20
      Hint = #50696#50557#48516
      Caption = '+mm+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BtnNameClick
    end
    object spSkinButton6: TButton
      Left = 76
      Top = 133
      Width = 31
      Height = 20
      Hint = #50696#50557#50900
      Caption = '+rr+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BtnNameClick
    end
    object spSkinButton7: TButton
      Left = 5
      Top = 133
      Width = 31
      Height = 20
      Hint = #51008#54665#44228#51340
      Caption = '+xxxx+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BtnNameClick
    end
    object spSkinButton8: TButton
      Left = 41
      Top = 133
      Width = 31
      Height = 20
      Hint = #51204#54868#48264#54840
      Caption = '+ccc+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BtnNameClick
    end
    object spSkinButton1: TButton
      Left = 110
      Top = 133
      Width = 31
      Height = 20
      Hint = #50836#51068
      Caption = '+ee+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BtnNameClick
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdSendList
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.14'
    Left = 385
    Top = 225
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xls'
    Filter = #50641#49472#54028#51068'|*.xls'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = #50641#49472#54028#51068' '#48520#47084#50724#44592
    Left = 385
    Top = 190
  end
  object SaveDialog1: TSaveDialog
    Left = 630
    Top = 10
  end
end
