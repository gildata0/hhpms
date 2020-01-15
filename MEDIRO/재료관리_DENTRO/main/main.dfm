object main_f: Tmain_f
  Left = 190
  Top = 124
  Caption = 'DMMS ver.1.0.1'
  ClientHeight = 538
  ClientWidth = 1228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = AdvMainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowMenu = mnuWindow
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvDockPanel1: TAdvDockPanel
    Left = 0
    Top = 0
    Width = 1228
    Height = 43
    MinimumSize = 3
    LockHeight = False
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    UseRunTimeHeight = False
    Version = '6.5.3.4'
    object AdvToolBar1: TAdvToolBar
      Left = 190
      Top = 1
      Width = 919
      Height = 28
      AllowFloating = True
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      CompactImageIndex = -1
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList2
      ParentOptionPicture = True
      ToolBarIndex = -1
      object btnPummok: TAdvToolBarButton
        Left = 99
        Top = 2
        Width = 72
        Height = 24
        Action = pummok
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object btnBaljulist: TAdvToolBarButton
        Left = 350
        Top = 2
        Width = 83
        Height = 24
        Action = baljulist
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 10
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object btnibgo: TAdvToolBarButton
        Left = 690
        Top = 2
        Width = 72
        Height = 24
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Caption = #48156#51452#46321#47197
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 13
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
        Visible = False
      end
      object btnClose: TAdvToolBarButton
        Left = 855
        Top = 2
        Width = 50
        Height = 24
        Action = exit
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 35
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object btnChulgo: TAdvToolBarButton
        Left = 525
        Top = 2
        Width = 83
        Height = 24
        Action = chulgoList
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 26
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object btnPummokList: TAdvToolBarButton
        Left = 171
        Top = 2
        Width = 83
        Height = 24
        Action = pummokList
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object btnChulgoReg: TAdvToolBarButton
        Left = 443
        Top = 2
        Width = 72
        Height = 24
        Action = chulgo
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 5
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object btnIbgoReg: TAdvToolBarButton
        Left = 608
        Top = 2
        Width = 72
        Height = 24
        Action = ibgo
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 13
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object AdvToolBarSeparator1: TAdvToolBarSeparator
        Left = 433
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator2: TAdvToolBarSeparator
        Left = 680
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator3: TAdvToolBarSeparator
        Left = 254
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator4: TAdvToolBarSeparator
        Left = 845
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
      object btnBalju: TAdvToolBarButton
        Left = 264
        Top = 2
        Width = 86
        Height = 24
        Action = actbalju
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -12
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 31
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object AdvToolBarButton1: TAdvToolBarButton
        Left = 2
        Top = 2
        Width = 97
        Height = 24
        Action = Cloudbackup
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -12
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 17
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object AdvToolBarButton3: TAdvToolBarButton
        Left = 762
        Top = 2
        Width = 83
        Height = 24
        Action = ibgolist
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object AdvToolBarSeparator5: TAdvToolBarSeparator
        Left = 515
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
    end
    object AdvToolBar2: TAdvToolBar
      Left = 3
      Top = 1
      Width = 0
      Height = 26
      AllowFloating = True
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      CompactImageIndex = -1
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      ParentOptionPicture = True
      ToolBarIndex = -1
      Visible = False
      object AdvToolBarMenuButton1: TAdvToolBarMenuButton
        Left = 2
        Top = 29
        Width = 32
        Height = 23
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Tahoma'
        Appearance.CaptionFont.Style = []
        Caption = #44160#49353
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Position = daTop
        ShowCaption = True
        Version = '6.5.3.4'
      end
      object edtSearch: TAdvLUEdit
        Left = 34
        Top = 29
        Width = 137
        Height = 21
        DefaultHandling = True
        EmptyText = #44160#49353#50612#47484' '#51077#47141#54616#49464#50836
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Enabled = True
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.History = True
        Lookup.Multi = True
        Lookup.Separator = ';'
        AutoSelect = False
        Color = clWindow
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'edtSearch'
        Visible = True
        Version = '1.4.1.0'
        AutoHistory = False
        AutoSynchronize = False
        FileLookup = False
        LookupPersist.Enable = False
        LookupPersist.Location = plInifile
        LookupPersist.Key = 'LUEdit'
        LookupPersist.Section = 'Values'
        LookupPersist.Count = 0
        LookupPersist.MaxCount = False
        MatchCase = False
      end
    end
  end
  object AdvOfficeStatusBar1: TAdvOfficeStatusBar
    Left = 0
    Top = 517
    Width = 1228
    Height = 21
    AnchorHint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        ImageIndex = 0
        Progress.BackGround = clBtnFace
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psImage
        Text = 'Online'
        TimeFormat = 'hh:mm:ss'
        Width = 80
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        OfficeHint.Title = #50937' '#47553#53356
        OfficeHint.Notes.Strings = (
          #51060' '#47553#53356#47484' '#53364#47533#54616#49884#47732' '#52824#44284' '#51116#47308#44288#47532' '#49324#51060#53944#47484' '#48169#47928#54616#49892' '#49688' '#51080#51004#47728
          #47566#51008' '#44288#47532#50857' '#51088#47308#47484' '#48155#50500' '#48372#49892' '#49688' '#51080#49845#45768#45796'.')
        OfficeHint.Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D604140A1D08DE685262000000097048597300001EC1
          00001EC101C36954530000000467414D410000B18F0BFC610500000940494441
          5478DABD57596C1DE515FEFE7FF63B73AFEF62C7F1864962827013135645AC41
          10B62A42C04BD5177828FB535BA9A87D69558AD487225A5152A92DA295AA3E04
          A5A842B454A449082D21294B5CD7CE02496C278EF7BBCF9DFD9F9E99DC941811
          0255D5918E66647BFEEF3BDFF9CE3963E04B5C711CB324BECC3B17BB2E7AD879
          80EC9557C0DE960EF4ACEE2DDF5432950D1926F5A82CA7FA2173DE1B974ECD2D
          E190ADF0BFBDFEE448E57F42A00DCE7EB37752FD7373C783FA99C1C7366FC8DC
          D0DFA948B51A83C134ACCA64B05089B16FCAC0728B230C622F5B3CB92B52E75E
          7CF9FE47DF0063F17F45A00DCE1FDAF9DB5BCA5D6FFD8CEB67360E8A3CAE2896
          50E4FD8882019CAC5E8B6B8A212ECBEA185D08F0FA6186C00D110B1FC3231398
          5E14FB166BF1933BBFFEF0F88570A40B81FFF2FDF7E5E776BFF3DDC5BE577E85
          EC899EB58605E1DD8166B81915BF0F25AB863965033A8D081DB289DF9D51104B
          3674CD83176561578AB0A46850A0FEF0C8D736CD8EEE78EBD01726D0BB6D9BB2
          FB40EDF9B98197BE23154E4959AEA1E08EA0613D81AE4C1D37741CC134AEC571
          B31FD38182D3B68F0566D09B1A444CF750400FAAA82D3378FCB8D2BDF19FDBD6
          DEB4B532B6F3DD8317259064FFCCCBE33F38567AE1DB4ACF24EBD64D04367079
          47804169109B0BC7D06B16306C0A545937968D2CCA929ED692FB1158C541BC6C
          C3AB1109B30ABD3083D2C00CD33AA4BB32EB6E3A72E2CD83E39F4B60CFB1B5F7
          CE5FFEC7EDE65547B91173C4514C32AFC275FC015CB9CAA1E73E70E9522CC5AB
          60450C652210107C442AC45517AC152026228123509BD5102CE6D0BD7E1E93BB
          AF6062B9F36EA77CF58EFAE2DBFFE9127E3EF8F0AD3FB7EAFAE4F660E301C9CA
          69D0CC18795342469560190A72F27A3235874016BE31082993458E4EE02226E3
          C510F42CD2BE89537B270DA0163DF41B1D38F25A1193FB4556D6D80BE763AE20
          C099FB687DCDFEC1988770DC266AAE87B9568C5E4386B0C651E70B9891465055
          FB215193B4940CA2043C12547B208AE3349267AA654AAA3E5DC48925076B3785
          B8E7A9E3E8BF21BC7BE3371EDA7C0E535ED1923C7E82071CBEE7615904103513
          A57C88A3A18342B81A47B1051D5C47276527D1E1F32101F8022E49EE07212232
          1F23329CCA16456709380D8E7D3FDD8A079FDE836CA60CA9EF181B3F6A3D36F6
          6BBCBB4281A16B7FB8290CFD75811BC0A90508E734C025174721ECF26A8C356E
          C7299763C68D70DC13384CC0535467BB15028E9FF67F4044681051089A132225
          24C2086A8743318B86D702E31EF23DF27DB8F5FBF24A05646CF16D9F12105097
          BB91D9FF4D6843164ADA04EACDFBE1C99D5479172D5D8222F154669F000C3F04
          7702F87680C889207B1175439B009109886C4767057683C2B5C11401A5D42A5C
          B5AEB5E9C3B7F09EFC89FE6243607B082217F9E32308966504D902325DF46C31
          F89A8B900EB753020C71E27C22402C10910A5E837A81EE3191E0A4927005428A
          A01551174C5169880C4DC880DE6D792EA4A1931B09F61302511CF685810F65B1
          13347121AB65F0C08253A5DF91BDFDD8A5C302289A042EF3B4EF93161594694C
          F2333B844C010A6E27A4047C02F7899066B8F0854AEFE5717AF914965A1E6A4D
          D6BBA204220A3541C69347D7C3BBE318EC911DC81EFE16E2F93C72CA281C6F98
          642655DA04386760244032F5182923392104950149296CF2029170EA674BF3D1
          8409AC9E45B9D6C09C63A3E2D1ECF0FD951E88E3C84EFA37914CDAB509EA3DFF
          82288D21AEDC829A1840AE7B121ACDF846DD4448938F930F92764F1C2F91F912
          1512F90511899A21DC6A909625A21235C923FF982B236EF858A4D696E502E168
          C1A714C0A4A450BFD38F1327EB6FDF0CF99AD31034DD226AB7AA9D07A7FA738D
          08CA346E8940D242C91062540646C6134424A232F994B94B9D1410701C53178D
          0E21EC5903C79C803E3B8CCCE91BE189B1C91504222FFA403134F214D593276B
          358632D303297F8806541E924A634227F355D611AA4C3FA31250A40327E9FB80
          642705023B096A499746734CD97022D202943D5F45AE6B18EEC75D10FD6ECC4F
          0C1D5A59022FDC25591921493167E97420139D29406E082CDEF92C640217918F
          CEAFAC46677D33DC77EF22A5E4D40794646AC6D04B82BC4049908E940875063B
          4B22AC53EBD669826A446ED9383D7DF047132B9651B372A056ECDF723B67D220
          A3312B71858CA6223216501EF80B5C9B64A7D2D8A60DBB7004C84D4236AA1033
          AB486E8223B9A32048D930DE0697C234B81411126D4A0A236F9037EC5F2C4FED
          FDEBA74731A830CFABA671B35FF7C95FF402F3511BFE03BCB974B843640248F4
          EC2FD3A6533E80D43D8ADEAB9620766F3BBB7CA4D495F41E0152B0F4994633A5
          C9258222DF48B2E4442C7EF133D771657EDFD1A1E17BB75A39E312D3A00D682A
          C8F64A88CD85D458814F59859CDA2C1983E4015AD7415C85D2BB00ADE44129D8
          90057D1B7032A82A2029E4239DD35695A126DBB464A155779E1B7FE3E9573F6B
          19A55620CB3FC275ED2031B738C9689D1841E1CA93608593B09D166CBF49994A
          10AD44235A365A137EF643F0E21854DACD9980BE19F73F9ECE5645E5692433C3
          CC6A705BDE6104EA339FFB41327362D7D2EA4B6E3B2EEBCA03349C78622E2BEC
          4530340D9A3F30648B0CC9D39664329990516BEA9461C6A0EF8622BA67EF8381
          4E64F23A74FAA6502D0DD9A28588B16A7D7969DB811D8FCF9C8F77C1AFE2EB6E
          7BF6112DAB6F4718C99428942E1FCEF5076808D1846B36A8020DC449595515B2
          6540D54CE4EA1B609EBC919C4E0656651ADB327492DE71FCFAC77F7FE3A9D19D
          3FD94B47D729ECA4F33F538173D799C9DD1FE48A578E29BA76A7AC4946D860D0
          694948033598F91ECA9896524E81D661C294BA910B86909DBD9A7688092D9F81
          5534A1D3BDE139531FBEBAFD7B47FEF4D247ED92CB6D70FF730924D7C2E977A6
          EAE599835CCAADC964F37D7226E2B5701C8AAC40A62C992C9097D72077680BF4
          A535A48205B340C0B90C7C09EEF4C47BAFEDFDF193CF2F1D7E7F3E1D0C9F8493
          F45CE2B98BFD6B968CA402C57AAB63EDCD3D43D7DF8BFEA511AD8BE7F3A50196
          CFAC87E6F5D1C82232860AA1C8C269D5E616A7260E7DF4E6EFF734CE4CCEB625
          4FA241516B47FD9C025FE41FCDE46FB436911E8A41DDEABFACA374E93A25932B
          D1C781C2781CBA76B9529B3D76CA6F2ECDB741AAE78125D1A468B581C5454D78
          812B2999D226A4B7EFCA79E724F2066D9073F773B28B2F89F5FFB9FE0DBEC6B5
          B300B9F0F10000000049454E44AE426082}
        OfficeHint.ShowHelp = True
        Progress.BackGround = clBtnFace
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Text = 'Ver.'
        TimeFormat = 'hh:mm:ss'
        Width = 118
      end
      item
        AppearanceStyle = psLight
        Button = True
        DateFormat = 'mm/dd/yyyy'
        ImageIndex = 1
        Progress.BackGround = clBtnFace
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psImage
        Text = #44221#50689#51648#50896#49892#50857
        TimeFormat = 'hh:mm:ss'
        Width = 150
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clBtnFace
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psTime
        TimeFormat = 'hh:mm:ss'
        Width = 80
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 100
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = True
        Style = psProgress
        TimeFormat = 'hh:mm:ss'
        Width = 75
      end
      item
        Alignment = taCenter
        AppearanceStyle = psDark
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clBtnFace
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psNumLock
        TimeFormat = 'hh:mm:ss'
        Width = 40
      end
      item
        Alignment = taCenter
        AppearanceStyle = psDark
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clBtnFace
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psCapsLock
        TimeFormat = 'hh:mm:ss'
        Width = 40
      end
      item
        Alignment = taRightJustify
        AppearanceStyle = psDark
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clBtnFace
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Text = 
          '<p align="right"><B><I><FONT COLOR="clwhite">Healthhub  '#51032#47308#51221#48372#49324#50629#48512'<' +
          '/FONT></i></b></p>'
        TimeFormat = 'hh:mm:ss'
        Width = 104
      end>
    ParentShowHint = False
    ShowHint = True
    ShowSplitter = True
    SimplePanel = False
    Styler = AdvOfficeStatusBarOfficeStyler1
    UseSystemFont = False
    Version = '1.6.2.3'
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    AppColor.AppButtonColor = 13005312
    AppColor.AppButtonHoverColor = 16755772
    AppColor.TextColor = clWhite
    AppColor.HoverColor = 16246477
    AppColor.HoverTextColor = clBlack
    AppColor.HoverBorderColor = 15187578
    AppColor.SelectedColor = 15187578
    AppColor.SelectedTextColor = clBlack
    AppColor.SelectedBorderColor = 15187578
    Style = bsOffice2007Luna
    AdvMenuStyler = AdvMenuOfficeStyler1
    BorderColor = 14141623
    BorderColorHot = 14731181
    ButtonAppearance.Color = 13627626
    ButtonAppearance.ColorTo = 9224369
    ButtonAppearance.ColorChecked = 9229823
    ButtonAppearance.ColorCheckedTo = 5812223
    ButtonAppearance.ColorDown = 5149182
    ButtonAppearance.ColorDownTo = 9556991
    ButtonAppearance.ColorHot = 13432063
    ButtonAppearance.ColorHotTo = 9556223
    ButtonAppearance.BorderDownColor = 3693887
    ButtonAppearance.BorderHotColor = 3693887
    ButtonAppearance.BorderCheckedColor = 3693887
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 15915714
    CaptionAppearance.CaptionColorTo = 15784385
    CaptionAppearance.CaptionTextColor = 11168318
    CaptionAppearance.CaptionBorderColor = clBlack
    CaptionAppearance.CaptionColorHot = 16769224
    CaptionAppearance.CaptionColorHotTo = 16772566
    CaptionAppearance.CaptionTextColorHot = 11168318
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = 15587527
    Color.ColorTo = 16181721
    Color.Direction = gdVertical
    Color.Mirror.Color = 15984090
    Color.Mirror.ColorTo = 15785680
    Color.Mirror.ColorMirror = 15587784
    Color.Mirror.ColorMirrorTo = 16510428
    ColorHot.Color = 16773606
    ColorHot.ColorTo = 16444126
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 16642021
    ColorHot.Mirror.ColorTo = 16576743
    ColorHot.Mirror.ColorMirror = 16509403
    ColorHot.Mirror.ColorMirrorTo = 16510428
    CompactGlowButtonAppearance.BorderColor = 14727579
    CompactGlowButtonAppearance.BorderColorHot = 15193781
    CompactGlowButtonAppearance.BorderColorDown = 12034958
    CompactGlowButtonAppearance.BorderColorChecked = 12034958
    CompactGlowButtonAppearance.Color = 15653832
    CompactGlowButtonAppearance.ColorTo = 16178633
    CompactGlowButtonAppearance.ColorChecked = 14599853
    CompactGlowButtonAppearance.ColorCheckedTo = 13544844
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 14599853
    CompactGlowButtonAppearance.ColorDownTo = 13544844
    CompactGlowButtonAppearance.ColorHot = 16250863
    CompactGlowButtonAppearance.ColorHotTo = 16246742
    CompactGlowButtonAppearance.ColorMirror = 15586496
    CompactGlowButtonAppearance.ColorMirrorTo = 16245200
    CompactGlowButtonAppearance.ColorMirrorHot = 16247491
    CompactGlowButtonAppearance.ColorMirrorHotTo = 16246742
    CompactGlowButtonAppearance.ColorMirrorDown = 16766645
    CompactGlowButtonAppearance.ColorMirrorDownTo = 13014131
    CompactGlowButtonAppearance.ColorMirrorChecked = 16766645
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 13014131
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 15587527
    DockColor.ColorTo = 16445929
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    DragGripStyle = dsNone
    FloatingWindowBorderColor = 14922381
    FloatingWindowBorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 14727579
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.Color = 15653832
    GlowButtonAppearance.ColorTo = 16178633
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15586496
    GlowButtonAppearance.ColorMirrorTo = 16245200
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.Background = clInfoBk
    GroupAppearance.BorderColor = 12763842
    GroupAppearance.Color = 15851212
    GroupAppearance.ColorTo = 14213857
    GroupAppearance.ColorMirror = 14213857
    GroupAppearance.ColorMirrorTo = 10871273
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = 9126421
    GroupAppearance.CaptionAppearance.CaptionColor = 15915714
    GroupAppearance.CaptionAppearance.CaptionColorTo = 15784385
    GroupAppearance.CaptionAppearance.CaptionTextColor = 11168318
    GroupAppearance.CaptionAppearance.CaptionColorHot = 16769224
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 16772566
    GroupAppearance.CaptionAppearance.CaptionTextColorHot = 11168318
    GroupAppearance.PageAppearance.BorderColor = 12763842
    GroupAppearance.PageAppearance.Color = 14086910
    GroupAppearance.PageAppearance.ColorTo = 16382457
    GroupAppearance.PageAppearance.ColorMirror = 16382457
    GroupAppearance.PageAppearance.ColorMirrorTo = 16382457
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = 12888726
    GroupAppearance.PageAppearance.HighLightColor = 16644558
    GroupAppearance.TabAppearance.BorderColor = 10534860
    GroupAppearance.TabAppearance.BorderColorHot = 10534860
    GroupAppearance.TabAppearance.BorderColorSelected = 10534860
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 10534860
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 10412027
    GroupAppearance.TabAppearance.ColorSelectedTo = 12249340
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = 14542308
    GroupAppearance.TabAppearance.ColorHotTo = 16768709
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 14016477
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 10736609
    GroupAppearance.TabAppearance.ColorMirrorSelected = 12249340
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 13955581
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Tahoma'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggRadial
    GroupAppearance.TabAppearance.GradientMirror = ggRadial
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = 9126421
    GroupAppearance.TabAppearance.TextColorHot = 9126421
    GroupAppearance.TabAppearance.TextColorSelected = 9126421
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = 15255470
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16643309
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.BorderColor = 13423059
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 15530237
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16382457
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 15660277
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16645114
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 14922381
    PageAppearance.Color = 15984090
    PageAppearance.ColorTo = 15785680
    PageAppearance.ColorMirror = 15587784
    PageAppearance.ColorMirrorTo = 16774371
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 12888726
    PageAppearance.HighLightColor = 16644558
    PagerCaption.BorderColor = 15780526
    PagerCaption.Color = 15525858
    PagerCaption.ColorTo = 15590878
    PagerCaption.ColorMirror = 15524312
    PagerCaption.ColorMirrorTo = 15723487
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = 11168318
    PagerCaption.TextColorExtended = 7958633
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -13
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 14005146
    QATAppearance.Color = 16050142
    QATAppearance.ColorTo = 15653065
    QATAppearance.FullSizeBorderColor = 13476222
    QATAppearance.FullSizeColor = 15584690
    QATAppearance.FullSizeColorTo = 15386026
    RightHandleColor = 14668485
    RightHandleColorTo = 14731181
    RightHandleColorHot = 13891839
    RightHandleColorHotTo = 7782911
    RightHandleColorDown = 557032
    RightHandleColorDownTo = 8182519
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 15383705
    TabAppearance.BorderColorSelected = 14922381
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16709360
    TabAppearance.ColorSelectedTo = 16445929
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 14542308
    TabAppearance.ColorHotTo = 16768709
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 14016477
    TabAppearance.ColorMirrorHotTo = 10736609
    TabAppearance.ColorMirrorSelected = 16445929
    TabAppearance.ColorMirrorSelectedTo = 16181984
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggRadial
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = 9126421
    TabAppearance.TextColorHot = 9126421
    TabAppearance.TextColorSelected = 9126421
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 15255470
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16643309
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 16767935
    TabAppearance.BackGround.ColorTo = clNone
    TabAppearance.BackGround.Direction = gdVertical
    Left = 121
    Top = 252
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Style = psOffice2007Luna
    BorderColor = 11566422
    PanelAppearanceLight.BorderColor = clNone
    PanelAppearanceLight.BorderColorHot = 10079963
    PanelAppearanceLight.BorderColorDown = 4548219
    PanelAppearanceLight.Color = 16377559
    PanelAppearanceLight.ColorTo = 16309447
    PanelAppearanceLight.ColorHot = 16515071
    PanelAppearanceLight.ColorHotTo = 12644607
    PanelAppearanceLight.ColorDown = 7845111
    PanelAppearanceLight.ColorDownTo = 4561657
    PanelAppearanceLight.ColorMirror = 16109747
    PanelAppearanceLight.ColorMirrorTo = 16244941
    PanelAppearanceLight.ColorMirrorHot = 7067903
    PanelAppearanceLight.ColorMirrorHotTo = 10544892
    PanelAppearanceLight.ColorMirrorDown = 1671928
    PanelAppearanceLight.ColorMirrorDownTo = 241407
    PanelAppearanceLight.TextColor = 6365193
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = 10079963
    PanelAppearanceDark.BorderColorDown = 4548219
    PanelAppearanceDark.Color = 16309445
    PanelAppearanceDark.ColorTo = 16103047
    PanelAppearanceDark.ColorHot = 16515071
    PanelAppearanceDark.ColorHotTo = 12644607
    PanelAppearanceDark.ColorDown = 7845111
    PanelAppearanceDark.ColorDownTo = 4561657
    PanelAppearanceDark.ColorMirror = 15382160
    PanelAppearanceDark.ColorMirrorTo = 12752244
    PanelAppearanceDark.ColorMirrorHot = 7067903
    PanelAppearanceDark.ColorMirrorHotTo = 10544892
    PanelAppearanceDark.ColorMirrorDown = 1671928
    PanelAppearanceDark.ColorMirrorDownTo = 241407
    PanelAppearanceDark.TextColor = 6365193
    PanelAppearanceDark.TextColorHot = 6365193
    PanelAppearanceDark.TextColorDown = 6365193
    PanelAppearanceDark.TextStyle = []
    Left = 121
    Top = 311
  end
  object AdvOfficeHint1: TAdvOfficeHint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HintHelpText = 'Press F1 for more help.'
    HintHelpPicture.Data = {
      424D360500000000000036040000280000001000000010000000010008000000
      000000010000C30E0000C30E00000001000000010000BD310000BD420800BD4A
      0800B54A1000BD4A1000C64A1000D6521000C6521800CE521800BD522100C652
      2100C65A2100CE5A2100C65A2900CE5A2900CE632900E7632900C6633100CE63
      3100CE6B3100D66B3100DE6B3100E7733100BD633900CE6B3900D66B3900E773
      3900D67342004A4A4A00FF8C4A0052525200C67B5200D67B52005A5A5A00C67B
      5A00DE845A0063636300DE8C63006B6B6B007B736B00C6846B00CE8C6B00DE8C
      6B00F79C6B0073737300DE947300E79C7300FFB573008C847B00D69C7B00E79C
      7B00F7A57B00CE9C8400EFAD8400A59C9400C6A59400D6AD9400DEAD9400EFAD
      9400FFCE94009C9C9C00A59C9C00D6AD9C00DEAD9C00FFCE9C00CEB5A500E7BD
      A500ADADAD00B5ADAD00CEB5AD00FFD6AD00FFDEAD00CEBDB500CEC6BD00DEC6
      BD00E7CEBD00CECEC600DECEC600E7CEC600E7D6C600FFF7C600CECECE00E7D6
      CE00F7DECE00FFDECE00FFEFCE00EFDED600F7DED600F7E7D600DEDEDE00EFE7
      DE00F7E7DE00FFEFDE00E7E7E700F7E7E700F7EFE700FFEFE700F7EFEF00FFEF
      EF00F7F7EF00FFF7EF00EFF7F700F7F7F700FFF7F700FF00FF00EFFFFF00F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00686868683C261E1C1C1C
      1E3C68686868686868434E565858565648212C3C686868684958665D41384A65
      615630263C6868525B6A3403173E0B093E6A57272C6868566A220407376B2D04
      03346A56213C5E663804120F182A0F120D034A5F36245F66110D130C295B180B
      12071F6A4D1E5F560B12120C286B3A05120F0D61561E5F530C12120F0A416B32
      070F0D61561E5F5F15140F0B07044D6B1B0C186756265E6B2B10295A2000316B
      25082E6B4A435F615C1D23696B426A691A1A625B366868566B552F355A655A33
      1D546B564C686861566B6B50473B3B46676B564C6868686861565E6B6B6B6B6B
      5A56596868686868685F636161616161615F68686868}
    Version = '1.7.0.4'
    Left = 48
    Top = 68
  end
  object AdvMainMenu1: TAdvMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.6.5.10'
    Left = 426
    Top = 63
    object mnuBasic: TMenuItem
      Caption = #44592#52488#44288#47532
      object N35: TMenuItem
        Caption = #44592#52488#51221#48372
        object N37: TMenuItem
          Action = basicinfo
          Caption = #48337#50896#51221#48372
        end
        object N38: TMenuItem
          Caption = '-'
        end
        object It: TMenuItem
          Caption = #51077#44256#44396#48516
          OnClick = ItClick
        end
        object Bt: TMenuItem
          Caption = #48156#51452#44396#48516
          OnClick = ItClick
        end
        object N39: TMenuItem
          Caption = '-'
        end
        object Ut: TMenuItem
          Caption = #50629#52404#44396#48516
          OnClick = ItClick
        end
        object Br: TMenuItem
          Caption = #48652#47004#46300
          OnClick = ItClick
        end
        object N40: TMenuItem
          Caption = '-'
        end
        object Lc: TMenuItem
          Caption = #50948#52824#44396#48516
          OnClick = ItClick
        end
        object Bk: TMenuItem
          Caption = #51008#54665#53076#46300
          OnClick = ItClick
        end
        object Cd: TMenuItem
          Caption = #52852#46300#53076#46300
          OnClick = ItClick
        end
        object N41: TMenuItem
          Caption = '-'
        end
        object Bl: TMenuItem
          Caption = #45824#48516#47448
          OnClick = ItClick
        end
        object Bm: TMenuItem
          Caption = #51473#48516#47448
          OnClick = ItClick
        end
        object Bs: TMenuItem
          Caption = #49548#48516#47448
          OnClick = ItClick
        end
        object MenuItem3: TMenuItem
          Caption = '-'
        end
        object Busu: TMenuItem
          Caption = #48512#49436
          OnClick = ItClick
        end
        object MenuItem4: TMenuItem
          Caption = '-'
          Visible = False
        end
        object Cb: TMenuItem
          Caption = #52376#48516
          Visible = False
          OnClick = ItClick
        end
        object Sf: TMenuItem
          Caption = #49345#44033#50756#47308
          Visible = False
          OnClick = ItClick
        end
        object Sm: TMenuItem
          Caption = #49345#44033#48169#48277
          Visible = False
          OnClick = ItClick
        end
        object N43: TMenuItem
          Caption = '-'
        end
        object Gj: TMenuItem
          Caption = #44228#51221#44284#47785
          OnClick = ItClick
        end
        object N15: TMenuItem
          Caption = '-'
        end
        object Gh: TMenuItem
          Caption = #44428#54620
          OnClick = ItClick
        end
        object Jw: TMenuItem
          Caption = #51649#50948
          OnClick = ItClick
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mnuPummok: TMenuItem
        Caption = #54408#47785' '#51221#48372
        object N8: TMenuItem
          Action = pummok
        end
        object N9: TMenuItem
          Action = pummokList
        end
      end
      object mnuSawon: TMenuItem
        Caption = #49324#50896#51221#48372
        object N10: TMenuItem
          Action = sawon
        end
        object N12: TMenuItem
          Action = sawon
        end
      end
      object mnuUpche: TMenuItem
        Caption = #50629#52404' '#51221#48372
        object N13: TMenuItem
          Action = ibchu
        end
        object N14: TMenuItem
          Action = ibchuList
        end
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object mnuBackimage: TMenuItem
        Caption = #48176#44221
        ImageIndex = 18
        OnClick = mnuBackimageClick
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object mnuClose: TMenuItem
        Caption = #45803#44592
        OnClick = mnuCloseClick
      end
    end
    object mnuMeib: TMenuItem
      Caption = #47588#51077#44288#47532
      Visible = False
      object mnuMeibMyungse: TMenuItem
        Caption = #47588#51077#47749#49464#49436
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuMeibWonjang: TMenuItem
        Caption = #47588#51077#52376#50896#51109
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mnu: TMenuItem
        Caption = #50629#52404#48324' '#47588#51077#51665#44228#54364
      end
      object N16: TMenuItem
        Caption = #54408#47785#48324' '#47588#51077#51665#44228#54364
      end
    end
    object N28: TMenuItem
      Caption = #48156#51452#44288#47532
      object N29: TMenuItem
        Action = actbalju
      end
      object N31: TMenuItem
        Action = baljulist
      end
    end
    object mnuibgo: TMenuItem
      Caption = #51077#44256#44288#47532
      object N18: TMenuItem
        Action = ibgolist
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object N19: TMenuItem
        Caption = #50629#52404#48324' '#51077#44256#51665#44228#54364
      end
      object N20: TMenuItem
        Caption = #54408#47785#48324' '#51077#44256#51665#44228#54364
      end
    end
    object mnuChulgo: TMenuItem
      Caption = #52636#44256#44288#47532
      object N21: TMenuItem
        Action = chulgoList
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N22: TMenuItem
        Caption = #49324#50896#48324' '#50896#51109
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N25: TMenuItem
        Caption = #54016#48324' '#52636#44256#51665#44228#54364
      end
      object N24: TMenuItem
        Caption = #51116#47308#48324' '#52636#44256#51665#44228#54364
      end
    end
    object mnuJigub: TMenuItem
      Caption = #51648#44553#44288#47532
      object N23: TMenuItem
        Caption = #51648#44553#47749#49464#49436
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N26: TMenuItem
        Caption = #51648#44553' '#51665#44228#54364
      end
      object N27: TMenuItem
        Caption = #48120#51648#44553' '#54788#54889
      end
    end
    object mnuTonggye: TMenuItem
      Caption = #53685#44228#44288#47532
      object ABC1: TMenuItem
        Caption = #52636#44256#47049' ABC'#44160#49353
      end
      object ABC2: TMenuItem
        Caption = #51077#44256#47049' ABC'#44160#49353
      end
    end
    object mnuJego: TMenuItem
      Caption = #51116#44256#44288#47532
      object N17: TMenuItem
        Action = jego
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object N33: TMenuItem
        Action = Cloudbackup
      end
    end
    object mnuWindow: TMenuItem
      Caption = #52285
    end
    object mnuHelp: TMenuItem
      Caption = #46020#50880#47568
    end
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Luna
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658729
    IconBar.ColorTo = 15658729
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = #44404#47548
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -9
    SelectedItem.NotesFont.Name = #44404#47548
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 15915714
    RootItem.ColorTo = 15784385
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clBlack
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -9
    NotesFont.Name = #44404#47548
    NotesFont.Style = []
    MenuBorderColor = clSilver
    Left = 121
    Top = 375
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2007Luna
    AppStyle = AdvAppStyler1
    Left = 164
    Top = 186
  end
  object AdvAppStyler1: TAdvAppStyler
    Style = tsOffice2007Luna
    Left = 41
    Top = 186
  end
  object ActionList1: TActionList
    Images = ImageList2
    Left = 510
    Top = 66
    object actbalju: TAction
      Caption = #51452#47928#49436' '#51089#49457
      ImageIndex = 31
      OnExecute = actbaljuExecute
    end
    object baljulist: TAction
      Caption = #51452#47928#47749#49464#49436
      ImageIndex = 10
      OnExecute = baljulistExecute
    end
    object pummok: TAction
      Caption = #54408#47785#46321#47197
      ImageIndex = 2
      OnExecute = pummokExecute
    end
    object pummokList: TAction
      Caption = #54408#47785#47749#49464#49436
      ImageIndex = 7
      OnExecute = pummokListExecute
    end
    object chulgo: TAction
      Caption = #52636#44256#46321#47197
      ImageIndex = 5
      OnExecute = chulgoExecute
    end
    object chulgoList: TAction
      Caption = #52636#44256#47749#49464#49436
      ImageIndex = 26
      OnExecute = chulgoListExecute
    end
    object ibgo: TAction
      Caption = #51077#44256#46321#47197
      ImageIndex = 13
      OnExecute = ibgoExecute
    end
    object ibgolist: TAction
      Caption = #51077#44256#47749#49464#49436
      ImageIndex = 4
      OnExecute = ibgolistExecute
    end
    object ibchu: TAction
      Caption = #50629#52404#46321#47197
      ImageIndex = 25
      OnExecute = ibchuExecute
    end
    object ibchuList: TAction
      Caption = #50629#52404' '#47749#49464#49436
      ImageIndex = 33
      OnExecute = ibchuListExecute
    end
    object exit: TAction
      Caption = #51333#47308
      ImageIndex = 35
      OnExecute = exitExecute
    end
    object sawon: TAction
      Caption = #49324#50896#46321#47197
      ImageIndex = 15
      OnExecute = sawonExecute
    end
    object basicinfo: TAction
      Caption = #44592#48376#51221#48372#46321#47197
      ImageIndex = 31
      OnExecute = basicinfoExecute
    end
    object jego: TAction
      Caption = #51204#52404' '#51116#44256' '#54788#54889
      ImageIndex = 21
      OnExecute = jegoExecute
    end
    object Cloudbackup: TAction
      Caption = #53364#46972#50864#46300' '#48177#50629
      ImageIndex = 17
    end
  end
  object od: TOpenPictureDialog
    Filter = 
      'All (*.tee;*.png_old;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.jpg;*.jpeg' +
      ';*.gif;*.png;*.tif;*.tiff;*.ico;*.emf;*.wmf)|*.tee;*.png_old;*.g' +
      'if;*.png;*.jpg;*.jpeg;*.bmp;*.jpg;*.jpeg;*.gif;*.png;*.tif;*.tif' +
      'f;*.ico;*.emf;*.wmf|TeeChart (*.tee)|*.tee|Portable Network Grap' +
      'hics (*.png_old)|*.png_old|GIF Image (*.gif)|*.gif|Portable Netw' +
      'ork Graphics (*.png)|*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Im' +
      'age File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|JPEG Images (*.jp' +
      'g)|*.jpg|JPEG Images (*.jpeg)|*.jpeg|GIF Images (*.gif)|*.gif|PN' +
      'G Images (*.png)|*.png|TIFF Images (*.tif)|*.tif|TIFF Images (*.' +
      'tiff)|*.tiff|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.em' +
      'f|Metafiles (*.wmf)|*.wmf'
    Left = 336
    Top = 66
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    AutoThemeAdapt = True
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = clGray
    Settings.BorderShadow = True
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.BottomIndent = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 15988728
    Settings.Caption.ColorTo = 11322307
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clBlack
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clBtnFace
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = clWhite
    Settings.ColorTo = 14938354
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = clBlack
    Settings.Font.Height = -11
    Settings.Font.Name = 'MS Sans Serif'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderColor = clSilver
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clBlack
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 14938354
    Settings.StatusBar.ColorTo = clWhite
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psWhidbey
    Left = 256
    Top = 68
  end
  object ImageList2: TImageList
    Left = 162
    Top = 68
    Bitmap = {
      494C010125002700440010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F0000000000FFFFFF0000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F0000000000FFFFFF00000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00000000007F7F7F0000000000FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F007F7F7F000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F00FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
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
      000000000000000000007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC66B00FFE2B100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005454540075757500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE0092929200A5A5A5009E9E9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000032500025AAFF00004A7300FFE2B10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006161610087878700838383007A7A7A00C5C5C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00CECECE009E9E9E00B1B1B100AAAAAA009E9E9E00868686001313
      1300000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFAA000048B8FF0048B8FF0048B8FF0025AAFF00004A7300FFE2B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F00898989008585850087878700878787007E7E7E00909190000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600CECECE00C2C2C200AAAAAA00C4C4C400B1B1B100A5A5A500929292008080
      8000757575000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000032500048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0025AAFF00004A
      7300FFE2B1000000000000000000000000000000000000000000545454007878
      78006E6E6E000000000000000000000000008B8B8B00838383007E7E7E00C5C5
      C500000000000000000000000000000000000000000000000000E6E6E600DADA
      DA00CECECE00C2C2C200737300005050000086868600AAAAAA009A9A9A008585
      85006C6C6C006262620000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000DC92
      000048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0048B8
      FF0025AAFF00004A730000000000000000000000000000000000000000004444
      44000000000000000000DC920000000000007D7E7D0087878700757675009091
      9000000000000000000000000000000000000000000000000000F2F2F200DADA
      DA00CECECE00B9B9000073730000969600009696000050500000868686008181
      81006E6E6E006262620000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000032
      500048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0025AAFF000092
      DC000092DC00FFB8480000000000000000000000000000000000000000000000
      000000000000DC920000B97A000000000000545554007D7E7D005E5E5E006D6E
      6D00C5C5C5000000000000000000000000000000000000000000F2F2F200DADA
      DA00B9B90000B9B90000DCDC0000B9B900009696000096960000737300005050
      00006E6E6E006262620000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000DC92000048B8
      FF0048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0000000000000000000062
      9600004A73000000000000000000000000000000000000000000FFAA2500B97A
      0000B97A00009662000096620000080808005C5D5C007F7F7F006E6F6E007A7A
      7A00A0A0A0000000000000000000000000000000000000000000F2F2F200B9B9
      0000B9B90000DCDC0000DCDC0000DCDC0000CECE0000B9B90000737300007373
      0000505000003030000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000032500048B8
      FF0048B8FF0048B8FF0048B8FF0048B8FF0000000000E6E6E600B6B6B6000000
      0000966200000000000000000000000000000000000000000000FFFFFF00FFE2
      B100FFAA25005032000050320000000000008C8D8C009D9D9D008C8C8C009494
      940090909000C5C5C50000000000000000000000000000000000B9B90000B9B9
      0000F7F70100E3E30400DCDC0000DCDC0000B9B90000007373008EFFFF0000B9
      B9000E0E0E006161000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000DC92000048B8FF0048B8
      FF0048B8FF0048B8FF0048B8FF0048B8FF0000000000FFFFFF0073000000FF25
      2500000000000000000000000000000000000000000000000000000000000000
      0000DC920000FFFFFF00966200000000000064656400878987007F807F00898A
      890099999900A0A0A00000000000000000000000000000000000B9B90000FFFF
      5800FDFD2C00E8E80400DCDC0000DCDC000000B9B9000E0E0E009E9E00008EFF
      FF000E0E0E007F7F000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000DC9200000032
      500048B8FF0048B8FF0048B8FF0048B8FF0048B8FF0000000000FFAB8E007300
      0000FF2525000000000000000000000000000000000000000000000000000000
      00000000000096620000FFAA0000000000007374730099999900828382009091
      9000C5C5C5000000000000000000000000000000000000000000FFFF4800FFFF
      8E00FFFF7F00FBFB0100F0F0000000B9B90000505000C6C60000ABAB00009696
      0000969600000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000DC9200000032500048B8FF0048B8FF0048B8FF0025AAFF0000000000FFAB
      8E0073000000FF25250000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1A2A100B3B3B300C5C5C5000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      4800FFFF6400FEFE000000DCDC0000505000E4E40000C7C70000B3B300009696
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFB848000032500048B8FF000092DC00FFC66B000000
      0000FFAB8E0073000000FF252500000000000000000000000000000000000000
      00000000000000000000B2B2B200B2B2B200C5C5C50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000505000FEFE0000DCDC0000DCDC0000B9B900000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000FFFF0000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC66B00007AB900000000000000
      000000000000FF6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFE0000DCDC0000DCDC0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000005656560000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000082828200CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000626262004A4A4A00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7E0075757500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000082828200A8A8A8009C9C9C0091919100F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006262620092929200CECECE00DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2A2A2007C7C
      7C006E6E6E006D6D6D00626262000B0B0B00AE8D4F00734A0000734A00007048
      0000654100000000000000000000000000000000000000000000000000000000
      00000000000000000000909090008B8B8B00838383007A7A7A00717171000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082828200BFBFBF00B3B3B300A8A8A8009C9C9C0091919100ADADAD000000
      0000000000000000000000000000000000000000000000000000000000006E6E
      6E0062626200CECECE00DADADA00E6E6E600F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7009F9F
      9F0099999900949494008E8E8E001B1B1B00D2A65700906F340089682D008564
      2900816026000000000000000000000000000000000000000000000000000000
      0000A5A5A5009D9D9D00949494008B8B8B00878787007E7E7E00757575000000
      000000000000000000000000000000000000000000000000000052525200D6D6
      D600CACACA00AFAFAF00AFAFAF00A8A8A8009C9C9C009191910085858500F2F2
      F200000000000000000000000000000000000000000000000000000000007A7A
      7A0092929200CECECE00DADADA00E6E6E600F2F2F200FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000DADADA00A2A2
      A2009C9C9C00969696009191910024242400FFC66B0094733700906F34008968
      2D00856429000000000000000000000000000000000000000000B7B7B700B3B3
      B300AAAAAA00A1A1A10099999900909090008B8B8B00838383007E7E7E007575
      7500000000000000000000000000000000000000000000000000000000009595
      9500777777005F5F5F00777777009E9E9E009C9C9C00919191008E8E8E00B3B3
      B300000000000000000000000000000000000000000000000000868686006E6E
      6E00CECECE00CECECE00DADADA00E6E6E600F2F2F200FFFFFF00F2F2F2000000
      0000000000000000000000000000000000000000000000000000F5F5F500A2A2
      A2009F9F9F00999999004A4A4A0026262600FFC66B0098773B0094733700906F
      34008D6C3000000000000000000000000000000000000000000000000000B3B3
      B300AEAEAE00A5A5A5009D9D9D00999999009090900087878700838383007E7E
      7E00000000000000000000000000000000000000000000000000000000002121
      2100000000000000000034343400838383009D9D9D0099999900999999009999
      9900F2F2F2000000000000000000000000000000000000000000929292009292
      9200CECECE00CECECE00DADADA00E6E6E600F2F2F200F2F2F200DADADA000000
      0000000000000E0E0E0000000000000000000000000000000000FEFEFE00A5A5
      A500A2A2A2009C9C9C0026262600FFC66B00A3824500A07E42009C7B3E009877
      3B0094733700000000000000000000000000000000000000000000000000B7B7
      B700B3B3B300AAAAAA00A1A1A1009D9D9D0094949400909090008B8B8B008787
      8700838383000000000000000000000000000000000000000000000000005E3F
      0000FFAA0000FFD48E0000000000646464009C9C9C00A5A5A500A5A5A500A5A5
      A500C1C1C10000000000000000000000000000000000734A000050320000B97A
      0000CECECE00CECECE00CECECE00DADADA00E6E6E600F2F2F200000000000E0E
      0E0092929200E6E6E6000E0E0E00000000000000000000000000FFFFFF00A8A8
      A8000E0E0E00FFFFFF003E3E3E00F3BE5F00AB8A4C00B97A00000E0E0E009C7B
      3E009C7B3E000000000000000000000000000000000000000000000000000000
      0000B7B7B700AEAEAE00AAAAAA00A1A1A1009D9D9D0099999900909090008B8B
      8B008B8B8B000000000000000000000000000000000000000000FFAA0000FFD4
      8E00B97A0000FFAA00005E4E3400343434008C8C8C00B0B0B000B0B0B000B0B0
      B000B0B0B000F2F2F200000000000000000000000000734A000050320000B97A
      0000B97A0000CECECE00CECECE00DADADA00AAAAAA000E0E0E00929292009292
      920092929200C2C2C2000E0E0E00000000000000000000000000FFFFFF00ADAD
      AD000E0E0E00E6E6E6008686860026262600AE8D4F00966200000E0E0E00A382
      4500A07E42000000000000000000000000000000000000000000000000000000
      0000BCBCBC00B3B3B300AEAEAE00AAAAAA00A1A1A1009D9D9D00999999009494
      9400909090009090900000000000000000000000000000000000FFAA0000DC92
      0000DC92000096620000FFD48E000000000083838300BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00CFCFCF000000000000000000000000000000000096620000734A
      0000B97A0000B97A0000CECECE00CECECE009292920092929200929292009292
      920092929200C2C2C2000E0E0E00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00E6E6E600E6E6E60026262600FFE2B100FFE2B100FFD48E00FFC6
      6B00FFC66B000000000000000000000000000000000000000000000000000000
      000000000000BCBCBC00B3B3B300AEAEAE00AAAAAA00A5A5A500A1A1A1009D9D
      9D009999990099999900000000000000000000000000000000005E3F0000FFD4
      8E0096620000FFAA0000FFD48E0000000000A4A4A400C6C6C600C6C6C600C6C6
      C600F2F2F2000000000000000000000000000000000000000000000000009662
      0000734A0000B97A0000B97A0000AAAAAA007A7A7A0092929200929292009292
      9200B97A0000DC9200000E0E0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000BCBCBC00B7B7B700B3B3B300AEAEAE00AAAAAA00A5A5
      A500A1A1A100000000000000000000000000000000000000000000000000FFAA
      0000FFD48E005E4E34000000000082828200D2D2D200D2D2D200F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096620000734A0000B97A0000734A00000000000092929200B97A00009662
      000096620000DC9200000E0E0E00000000000000000000000000D2A65700AE84
      3B00B1884100B38C4700B58F4D002C2C2C00D2D2D200A2A2A200A2A2A2009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C5C5C500BCBCBC00B7B7B700B3B3B300B3B3B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600DDDDDD00F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009662000050320000734A0000000000009662000096620000B97A
      0000966200000E0E0E0000000000000000000000000000000000000000000000
      00000000000000000000000000000E0E0E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9C9C900C5C5C500C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009662000000000000000000000E0E0E00966200000E0E
      0E00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000DC920000B97A000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000B5B5B500AAAA
      AA006E6E6E006E6E00005656000050500000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DADADA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E9E9E009E9E
      9E00000000000000000000000000000000000000000000000000000000000000
      000000000000DC920000FFAA0000FFAA0000B97A000096620000000000000000
      00000000000000000000000000000000000000000000D6D6D600CBCBCB00BCBC
      BC00626202008B8B0000737300005A5A0000000000000000000059595900A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000777777009292920000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600242424006E6E
      6E00000000000000000000000000000000000000000000000000000000009E9E
      9E0032323200FFAA0000FFAA0000FFAA0000B97A000096620000966200000000
      00000000000000000000000000000000000000000000DFDFDF00DADADA00CDCD
      B20062620200A0A000008B8B0000737300000000000040404000878787009494
      9400F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000001A1A1A00646464005252520047474700F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600090909000E0E
      0E0000000000000000000000000000000000000000009E9E9E00CECECE00CECE
      CE003232320032323200FFAA0000FFAA0000B97A000096620000966200000000
      00000000000000000000000000000000000000000000E6E6E600E3E3E3008B8B
      0000BFBF0000B9B90000A2A200008D8D00000000000056565600929292009292
      9200AAAAAA000000000000000000000000000000000000000000000000000000
      000000000000787878004F4F4F00252525000A0A0A00666666006D6D6D003C3C
      3C00606060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1FFFF0077AB
      AB000000000000000000000000000000000000000000CECECE009E9E9E003232
      320032323200FFAA0000FFAA0000FFAA0000B97A000096620000966200000000
      00000000000000000000000000000000000000000000F0F0F0006E6E6E00D0D0
      C800B9B91500BBBB000050500000AEAE00000000000072727200929292009292
      920094949400F2F2F20000000000000000000000000000000000000000000000
      000092929200595959003232320000000000A2A2A20000000000A2A2A2000000
      000095959500BABABA000000000000000000000000000000000000DCDC0019AB
      AB0000000000000000000000000000000000000000006BFFFF00B1FFFF006BFF
      FF000000000000000000000000000000000000000000CECECE00CECECE00CECE
      CE0032323200FFAA0000FFAA0000FFAA0000B97A000096620000966200000000
      00000000000000000000000000000000000000000000FCFCFC00E3E3E300F3F3
      F300AFAF1B00E0E01A00C6C60D00CFCF00000000000088888800929292009292
      920096969600DADADA0000000000000000000000000000000000000000009D9D
      9D00959595005B5B5B0000000000A2A2A200DDDDDD00F2F2F20069696900C2C2
      C200D2D2D200B6B6B6000000000000000000000000000065650000A5A50000BD
      BD0000DCDC0019ABAB0000000000000000000000000025FFFF0025FFFF0025FF
      FF000CE8E80000000000000000000000000000000000CECECE00CECECE003232
      3200FFAA0000FFAA0000DC920000FFAA0000B97A000096620000966200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000092929200929292009696
      9600DADADA007373000000000000000000000000000000000000AAAAAA00ACAC
      AC00A2A2A20000000000A2A2A200DDDDDD00EFEFEF00F2F2F200F2F2F2000000
      0000F2F2F200000000000000000000000000000000000000000000000000006D
      6D0000B9B90000000000000000000000000000000000000000000000000007E3
      E30000DCDC0000949400000000000000000000000000CECECE00CECECE003232
      3200FFAA0000FFAA0000FFAA0000FFAA0000B97A000096620000966200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A200BABABA00B1B1B100A7A7A7009E9E9E009696960096969600DADA
      DA007373000000000000000000000000000000000000A2A2A200BABABA00B1B1
      B1000000000069696900DDDDDD00EFEFEF00F2F2F200F2F2F20000000000F2F2
      F200B6B6B6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000E0E00000DCDC00000000000000000000000000CECECE00B6B6B600CECE
      CE00DC920000FFAA0000DC920000B97A0000B97A0000B97A0000966200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086868600BFBFBF00B6B6B600ACACAC00A2A2A2009F9F9F00DADADA007373
      0000000000000000000000000000000000000000000086868600BFBFBF00B6B6
      B6000000000099999900DBDBDB00F2F2F200F2F2F20000000000F2F2F200F2F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CDCD0000D5D500000000000000000000000000CECECE00CECECE00CECE
      CE00B6B6B600B97A0000B97A0000B97A0000B97A0000B97A000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000AEAEAE00BABABA00B1B1B100AAAAAA00DADADA00737300000000
      0000000000000000000000000000000000000000000000000000AEAEAE00BABA
      BA00B1B1B10000000000000000000000000020202000D8D8D800F2F2F200B6B6
      B600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BABA0000BEBE00000000000000000000000000CECECE00B6B6B6009E9E
      9E009E9E9E00AAAAAA00B97A0000B97A0000B97A000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000086868600BFBFBF00B8B8B800DADADA0073730000000000000000
      000000000000000000000000000000000000000000000000000086868600BFBF
      BF00B8B8B800DADADA000000000000000000A0A0A000F2F2F200F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000099990000AEAE0000CBCB0000E1E10000E4
      E4000096960000A5A5000000000000000000000000009E9E9E009E9E9E009E9E
      9E009E9E9E009E9E9E00AAAAAA00B97A0000B97A000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600DADADA0073730000FFFF6B00000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000050500000626200006D6D000075
      75000081810000606000000000000000000000000000000000009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      86009696000096960000FFFF6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000363600004D4D000047
      4700000000000000000000000000000000000000000000000000000000009E9E
      9E009E9E9E000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096960000DCDC000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000003939
      39009C9C9C00000000000000000000000000000000000000000000000000DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DA000000000000000000000000000000000000000000737373005A5A5A007373
      7300BDBDBD00ADADAD008484840000000000000000001818180042424200A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000088888800A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004C4C4C0075757500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000088888800A6A6
      A60000000000000000000000000000000000000000007B7B7B00DEDEDE008484
      8400C6C6C600ADADAD00B5B5B500B5B5B50084848400000000005A5A5A009494
      9400F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800929292009494
      9400F2F2F2000000000000000000000000000000000000000000000000000000
      00000000000000000000565656008B8B8B00838383007A7A7A00444444000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800929292009494
      9400F2F2F20000000000000000000000000000000000000000007B7B7B008484
      8400A5A5A500ADADAD00ADADAD00BDBDBD00BDBDBD00000000006B6B6B009494
      9400ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008888880092929200929292009292
      9200AAAAAA000000000000000000000000000000000000000000000000000000
      0000636363009D9D9D00949494008B8B8B00878787007E7E7E00757575000000
      00000000000000000000000000000000000000000000868686006E6E6E000000
      0000000000000000000000000000000000008888880092929200929292009292
      9200AAAAAA0000000000000000000000000000000000000000007B7B7B005A5A
      5A00848484009C9C9C00ADADAD00B5B5B500BDBDBD00000000007B7B7B008C8C
      8C0094949400F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000929292009292920092929200929292009292
      920094949400F2F2F200000000000000000000000000000000006E6E6E00B3B3
      B300AAAAAA00A1A1A10099999900909090008B8B8B00838383007E7E7E004646
      4600000000000000000000000000000000000000000000000000C2C2C2008686
      86008686860086868600000000004A4A4A009292920092929200929292009292
      920094949400F2F2F200000000000000000000000000000000009C9C9C000000
      0000424242009C9C9C00848484009C9C9C00B5B5B500000000008C8C8C009494
      940094949400D6D6D60000000000000000000000000000000000000000000000
      00000000000000000000919191009E9E9E009696960092929200929292009292
      920096969600DADADA0000000000000000000000000000000000000000000000
      0000353535005C5C5C0083838300999999009090900087878700838383007E7E
      7E0000000000000000000000000000000000000000000000000086868600AAAA
      AA00CECECE00AAAAAA00000000006E6E6E009696960092929200929292009292
      920096969600DADADA0000000000000000000000000000000000000000000000
      0000DEDEDE00CECECE00393939009C9C9C0000000000000000008C8C8C009494
      9400DEDEDE007373000000000000000000000000000000000000000000008EAB
      FF00000000002B2B2B0074747400A2A2A2009B9B9B0092929200929292009696
      9600DADADA007373000000000000000000000000000086868600C2C2C2006E6E
      6E000000000000000000000000008F8F8F0094949400909090008B8B8B008787
      87004F4F4F0000000000000000000000000000000000C2C2C200AAAAAA000000
      00001B1B1B003838380060606000919191009B9B9B0092929200929292009696
      9600DADADA007373000000000000000000000000000000000000000000000000
      0000DEDEDE00DEDEDE0000000000000000006B6B6B009494940094949400D6D6
      D60073730000000000000000000000000000000000004873FF004873FF004873
      FF006B8FFF000000000051515100A7A7A7009E9E9E009696960096969600DADA
      DA00737300000000000000000000000000000000000000000000000000008686
      8600626262006262620086868600868686009D9D9D0099999900909090008B8B
      8B008B8B8B000000000000000000000000000000000000000000FFC66B00B97A
      00002C1D00004343430094949400A7A7A7009E9E9E009696960096969600DADA
      DA00737300000000000000000000000000000000000000000000000000000000
      000000000000CECECE0000000000ADADAD0094949400A5A5A500DEDEDE007373
      000000000000000000000000000000000000000000000055FF000055FF000055
      FF004873FF000000000083838300ACACAC00A2A2A2009F9F9F00DADADA007373
      00000000000000000000000000000000000000000000AAAAAA00868686006E6E
      6E00000000000000000000000000A5A5A500A1A1A1009D9D9D00999999009494
      94009090900056565600000000000000000000000000FFC66B00DC920000734A
      0000B97A000018181800ACACAC00ACACAC00A2A2A2009F9F9F00DADADA007373
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500A5A5A500DEDEDE00737300000000
      0000000000000000000000000000000000000000000000000000000000000055
      FF000000000000000000BABABA00B1B1B100AAAAAA00DADADA00737300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000434343006C6C6C00A8A8A800AAAAAA00A5A5A500A1A1A1009D9D
      9D009999990099999900000000000000000000000000DC920000FFD48E00DC92
      0000B97A000002020200BABABA00B1B1B100AAAAAA00DADADA00737300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C600BDBDBD00DEDEDE0073730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868600BFBFBF00B8B8B800DADADA0073730000000000000000
      0000000000000000000000000000000000000000000000000000DC920000DC92
      0000734A00000000000066666600B7B7B700B3B3B300AEAEAE00AAAAAA00A5A5
      A500A1A1A10000000000000000000000000000000000FFD48E00B97A00009662
      0000FFAA250000000000BFBFBF00B8B8B800DADADA0073730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5B5B500D6D6D60073730000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000DC920000DC92
      0000734A0000B97A000060606000BCBCBC00B7B7B700B3B3B300B3B3B3000000
      0000000000000000000000000000000000000000000000000000B97A0000FFAA
      25000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484009494000094940000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000DC920000FFAA
      2500B97A0000DC92000084848400C5C5C500C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000094940000DEDE000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFAA25009662
      0000B97A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000DC9200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3E0062626200000000000000000000000000000000000000
      000000000000000000000000000000000000DC920000DC920000DC920000734A
      0000734A000000000000000000000000000000000000D4D4FF000000FE000000
      FE00D4D4FF000000000000000000000000000000000000000000000000000000
      0000000000003E3E3E0062626200000000000000000000000000000000000000
      0000000000000000000075750000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFAA0000FFAA00004A4A4A0000000000000000000000
      00006262620026262600B6B6B600000000000000000000000000000000000000
      0000000000000000000096620000B97A0000DC920000DC920000DC9200009662
      000096620000734A00000000000000000000000000000000FE000000FE000000
      FE000000FE0000000000B97A0000FFAA00004A4A4A0000000000000000000000
      00006262620026262600B6B6B60000000000000000000000000000000000B9B9
      000074746E00393937007B7B7B00DADADA0073730000C4C4C400707070005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000FFAA0000FFAA0000FFB84800FFAA00004A4A4A0062626200000000000000
      0000B6B6B600AAAAAA009E9E9E00000000000000000000000000000000000000
      0000966200009662000096620000B97A0000DC920000FFAA2500B97A00009E9E
      9E004A4A4A00966200000000000000000000000000000000FE000000FE000000
      FE000000FE0000000000DC920000FFAA00004A4A4A0062626200000000000000
      0000B6B6B600AAAAAA009E9E9E00000000000000000000000000000000003E3E
      3E00DADADA00C2C2C2009B9B9B00DADADA00E6E6E600DADADA009E9E9E009B9B
      9B004A4A4A000000000000000000000000000000000000000000FFAA0000FFAA
      0000FFB84800FFD48E0096620000FFAA00004A4A4A00626262006E6E6E000000
      00009E9E9E009292920086868600000000000000000000000000966200009662
      00009662000096620000DC920000FFAA250000000000B97A000000000000C2C2
      C2004A4A4A004A4A4A00000000000000000000000000D4D4FF000000FE000000
      FE00D4D4FF000000000096620000FFAA00004A4A4A00626262006E6E6E000000
      00009E9E9E009292920086868600000000000000000000000000737300009B9B
      9B00C2C2C200E6E6E6008B8B8B00323232003232320032323200B9B90000AAAA
      AA00AAAAAA0032323200000000000000000000000000FFAA0000FFB84800FFD4
      8E0096620000FFAA0000FFAA0000DC92000096620000626262006E6E6E007A7A
      7A0000000000868686006E6E6E00000000000000000000000000966200009662
      0000DC920000FFAA250000000000B97A0000B97A0000B97A000000000000C2C2
      C200565656005656560000000000000000000000000000000000000000000000
      000000000000FFAA0000FFAA0000DC92000096620000626262006E6E6E007A7A
      7A0000000000868686006E6E6E00000000000000000000000000DADADA00AAAA
      AA00323232004A4A4A0049494900434343003D3D3D0037373700DADADA009B9B
      00009696000061611800000000000000000000000000FFB8480096620000FFAA
      0000FFAA0000DC920000B97A0000B97A0000B97A0000734A00006E6E6E007A7A
      7A0086868600000000006E6E6E00000000000000000000000000DC920000FFAA
      250000000000CECECE00734A0000B97A0000B97A0000B97A000000000000CECE
      CE006262620056565600000000000000000000000000FFB8480096620000FFAA
      0000FFAA0000DC920000B97A0000B97A0000B97A0000734A00006E6E6E007A7A
      7A0086868600000000006E6E6E00000000000000000000000000FFFFFF004A4A
      4A00575757005656560055555500525252004B4B4B00434343006E6E6E00B9B9
      00009696000066660000000000000000000000000000FFAA0000FFAA0000DC92
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000734A00007A7A
      7A00868686000000000000000000000000000000000000000000000000000000
      0000CECECE00CECECE00CECECE00B97A0000B97A0000B97A000000000000DADA
      DA006262620062626200000000000000000000000000FFAA0000FFAA0000DC92
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000734A00007A7A
      7A00868686000000000000000000000000000000000000000000E6E6E6003D3D
      3D0062626200626262005D5D5D0056565600535353004A4A4A0032323200B9B9
      00009696000049490000000000000000000000000000DC920000B97A0000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A00009662
      0000868686000000000000000000000000000000000000000000000000000000
      0000CECECE00CECECE00B97A0000B97A0000CECECE00B97A000000000000DADA
      DA006E6E6E006E6E6E00000000000000000000000000DC920000B97A0000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A00009662
      0000868686000000000000000000000000000000000000000000000000003D3D
      3D006E6E6E006E6E6E0066666600616161005C5C5C00555555003B3B3B00DADA
      DA009696000000000000000000000000000000000000B97A0000B97A0000B97A
      000096620000734A000000000000734A0000B97A0000B97A0000B97A0000B97A
      0000734A00000000000000000000000000000000000000000000000000000000
      0000CECECE00CECECE00734A0000B97A0000B97A0000B97A000000000000DADA
      DA007A7A7A007A7A7A00000000000000000000000000B97A0000B97A0000B97A
      000096620000734A000000000000734A0000B97A0000B97A0000B97A0000B97A
      0000734A0000000000000000000000000000000000000000000000000000E6E6
      E6007A7A7A00878787006E6E6E0066666600626262004A4A4A003D3D3D00DADA
      DA00969600000000000000000000000000000000000000000000B97A0000B97A
      000000000000007AB90000B9B90000969600734A0000B97A0000B97A00009662
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00CECECE00CECECE00B97A000056565600AAAAAA00DADADA006262
      6200929292008686860000000000000000000000000000000000B97A0000B97A
      000000000000007AB90000B9B90000969600734A0000B97A0000B97A00009662
      000000000000000000000000000000000000000000000000000000000000E6E6
      E6003D3D3D006E6E6E003D3D3D0062626200DADADA00DADADA00B6B6B600B6B6
      B60000000000000000000000000000000000000000000000000000000000B97A
      0000007AB90000AAFF0025FFFF000073730000000000734A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE0056565600AAAAAA00DADADA00B6B6B6006E6E6E006E6E6E00AAAA
      AA00AAAAAA00AAAAAA000000000000000000000000000000000000000000B97A
      0000007AB90000AAFF0025FFFF000073730000000000734A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DADADA00DADADA00B6B6B600B6B6B6009E9E9E0056565600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000092DC00007AB900007AB900009696000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600DADADA00B6B6B6006E6E6E006E6E6E007A7A7A0086868600868686008686
      8600868686000000000000000000000000000000000000000000000000000000
      00000092DC00007AB900007AB900009696000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E00929292005656
      560000000000006296000062960000000000C2C2C20000000000565656006E6E
      6E00AAAAAA00FFFFFF00DADADA00000000000000000000000000000000000000
      0000565656006E6E6E007A7A7A00868686008686860086868600626262000000
      000000000000000000000000000000000000000000009E9E9E00929292005656
      560000000000006296000062960000000000C2C2C20000000000565656006E6E
      6E00AAAAAA00DADADA00DADADA00000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054545400CACACA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000088888800A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000046B6E400B2E1F4005D5D
      5D00F2F2F2000000000000000000000000000000000000000000000000000000
      000000000000000000005E5E5E008B8B8B00838383007A7A7A004C4C4C000000
      0000000000000000000000000000000000000508040005080400050804000508
      0400050804000508040005080400050804000508040088888800929292009494
      9400F2F2F2000000000000000000000000000000000000000000000000000000
      000000000000006296000092DC006BC6FF008ED4FF0000AAFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005656560046B6E40046B6E4000000
      0000AAAAAA000000000000000000000000000000000000000000000000000000
      00004A4A4A0071717100777777008B8B8B00878787007E7E7E00CACACA000000
      00000000000000000000000000000000000005080400936B4000A3794D00A982
      4A002F1C0A009A8C710087815D00595644000508040092929200929292009292
      9200AAAAAA000000000000000000000000000000000000000000000000000062
      960048B8FF00006296000000000000000000000000004A4A4A008ED4FF0000AA
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009292920092929200000000005C5C5C0038B0
      E2005D5D5D00F2F2F200000000000000000000000000000000005D5D5D005858
      5800434343000000000044444400909090008B8B8B00838383007E7E7E004E4E
      4E000000000000000000000000000000000005080400A9824A00B57F4500C794
      5B00411F0100AD966F002D261D0067624E000508040092929200929292009292
      920094949400F2F2F20000000000000000000000000000000000006296004A4A
      4A009E9E9E00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600B1B1FF000000
      00008ED4FF000000000000000000000000000000000000000000000000000000
      000000000000000000009D9D9D009E9E9E00969696005C5C5C00236F8F0046B6
      E400000000008282820000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000081818100909090008787870083838300CACA
      CA000000000000000000000000000000000005080400DBA86A00F4BA75000A06
      03007E7B6700F9D99600DAB27800806F55000508040092929200929292009292
      920096969600DADADA00000000000000000000000000000000000092DC00B6B6
      B600E6E6E600B6B6B60000000000000000004A4A4A009E9E9E00B6B6B600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA00ACACAC00A2A2A2009B9B9B00929292000000000046B6
      E400B2E1F400737300000000000000000000000000000000000000000000C2C2
      C200C2C2C200DADADA00000000004F4F4F0094949400909090008B8B8B008787
      87005858580000000000000000000000000005080400FCD78800F9D996001B18
      0500FDFDC800FCFDB700F9D996009E865A000508040092929200929292009696
      9600DADADA0073730000000000000000000000000000000000000092DC000000
      0000000000000092DC00B1E2FF00003250000092DC00B1E2FF00B1E2FF00B1E2
      FF00B1E2FF000000000000000000000000000000000000000000000000000000
      0000A2A2A200BABABA00B1B1B100A7A7A7009E9E9E00969696005F5F5F0046B6
      E40046B6E40000000000000000000000000000000000C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200FFFFFF00000000009999990099999900909090008B8B
      8B00CACACA0000000000000000000000000005080400FCFDB700772C0100BEB0
      7B00FDFDD5004A432400FCFDB700D4A76B00050804009696960096969600DADA
      DA0073730000000000000000000000000000000000000000000000629600007A
      B9006BC6FF006BC6FF00B1E2FF00B1B1FF00B1E2FF00B1E2FF00B1E2FF006B8F
      FF00007AB9000000000000000000000000000000000000000000000000000000
      000086868600BFBFBF00B6B6B600ACACAC00A2A2A2009F9F9F00DADADA000000
      000046B6E40000000000000000000000000000000000C2C2C200C2C2C200C2C2
      C20032323200C2C2C200DADADA00000000007A7A7A009D9D9D00999999009494
      94009090900061616100000000000000000005080400EEEFD700E3DEA600EBC3
      780059543C00ECEBC300E7E4B900DEAC6D00050804009F9F9F00DADADA007373
      00000000000000000000000000000000000000000000000000000062960048B8
      FF0000000000B1E2FF00B1E2FF00B1B1FF0000000000B1E2FF00B1E2FF00B1E2
      FF00B1E2FF000000000000000000000000000000000000000000000000000000
      000000000000AEAEAE00BABABA00B1B1B100AAAAAA00DADADA00737300000000
      000000000000000000000000000000000000000000000000000032323200C2C2
      C2009292920032323200C2C2C200FFFFFF0000000000A5A5A500A1A1A1009D9D
      9D0099999900CACACA0000000000000000000508040005080400050804000508
      04000508040005080400050804000508040005080400DADADA00737300000000
      00000000000000000000000000000000000000000000000000000000000048B8
      FF000092DC00007AB90000000000B1E2FF00000000000092DC0000000000B1E2
      FF000092DC000000000000000000000000000000000000000000000000000000
      00000000000086868600BFBFBF00B8B8B800DADADA0073730000000000000000
      0000000000000000000000000000000000000000000000000000C2C2C2003232
      3200C2C2C2003232320092929200DADADA0000000000AEAEAE00AAAAAA00A5A5
      A500CACACA000000000000000000000000000000000000000000000000000000
      00000000000086868600BFBFBF00B8B8B800DADADA0073730000000000000000
      0000000000000000000000000000000000000000000000000000960062000062
      960048B8FF0048B8FF008ED4FF00B1E2FF00B1E2FF00B1E2FF00B1E2FF0000AA
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      320092929200C2C2C200FFFFFF000000000000000000B3B3B300CACACA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      000000000000000000000000000000000000000000000000000096006200DC00
      92000000000048B8FF006BC6FF00B1E2FF00B1E2FF00B1E2FF000092DC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C200FFFFFF00000000000000000059595900C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      00000000000000000000000000000000000000000000B9007A00DC009200FF48
      B800FF8ED4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      00000000000000000000000000000000000000000000FF00AA00FF8ED4000000
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
      000000000000000000000000000000000000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000426600003656000032
      500000325000003250000032500000000000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000088888800A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3E006262620000000000000000000062960000446A000062
      96000050820000325000005082000000000000000000000000007B7B7B00A6A6
      A600000000000000000000000000000000000000000000000000435FB1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800929292009494
      9400F2F2F2000000000000000000000000000000000000000000000000000000
      00000000000000000000FFAA0000FFAA00004A4A4A0000000000000000000000
      00006262620026262600B6B6B6000000000000000000007AB900004A7300007A
      B90000629600003250000050820000000000000000003A3A3A00929292009494
      9400F2F2F200000000000000000000000000000000000000000000000000435F
      B100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008888880092929200929292009292
      9200AAAAAA000000000000000000000000000000000000000000000000000000
      0000FFAA0000FFAA0000FFB84800FFAA00004A4A4A0062626200000000000000
      0000B6B6B600AAAAAA009E9E9E0000000000000000000062960000548200004A
      7200004066000038590000325000000000001D1D1D004B4B4B00929292009292
      9200AAAAAA000000000000000000000000000000000000000000000000000000
      0000435FB1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000929292009292920092929200929292009292
      920094949400F2F2F20000000000000000000000000000000000FFAA0000FFAA
      0000FFB84800FFD48E0096620000FFAA00004A4A4A00626262006E6E6E000000
      00009E9E9E00929292008686860000000000000000000092DC00006296000092
      DC00007AB900004C7400007AB900000000003636360068686800929292009292
      920094949400F2F2F20000000000000000000000000000000000000000000000
      000000000000435FB10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009D9D9D009E9E9E009696960092929200929292009292
      920096969600DADADA00000000000000000000000000FFAA0000FFB84800FFD4
      8E0096620000FFAA0000FFAA0000DC92000096620000626262006E6E6E007A7A
      7A0000000000868686006E6E6E0000000000000000006BC6FF000062960048B8
      FF000092DC00006296000092DC0000000000555555008B8B8B00929292009292
      920096969600DADADA0000000000000000000000000000000000000000000049
      6F00007AB90000000000435FB10000000000734A000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA00ACACAC00A2A2A2009B9B9B0092929200929292009696
      9600DADADA0073730000000000000000000000000000FFB8480096620000FFAA
      0000FFAA0000DC920000B97A0000B97A0000B97A0000734A00006E6E6E007A7A
      7A0086868600000000006E6E6E0000000000000000000077B50000689F000062
      9600006296000062960000629600000000008585850092929200929292009696
      9600DADADA007373000000000000000000000000000000000000000000000092
      DC000092DC0096620000000000004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A200BABABA00B1B1B100A7A7A7009E9E9E009696960096969600DADA
      DA007373000000000000000000000000000000000000FFAA0000FFAA0000DC92
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000734A00007A7A
      7A008686860000000000000000000000000000000000D4F0FF00007AB9006BC6
      FF0048B8FF00006296000092DC0000000000979797009696960096969600DADA
      DA0073730000000000000000000000000000000000000000000000669B000092
      DC0000AAFF00B97A000000639700000000000000000091600000AB7000005A3B
      0000000000000000000000000000000000000000000000000000000000000000
      000086868600BFBFBF00B6B6B600ACACAC00A2A2A2009F9F9F00DADADA007373
      00000000000000000000000000000000000000000000DC920000B97A0000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A00009662
      0000868686000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A2A2009F9F9F00DADADA007373
      000000000000000000000000000000000000000000000000000054684A0000AA
      FF00FFAA0000DC92000000669B0000000000F9A61F00DC9200006F8D6600007A
      B900EF646400AE50500000000000000000000000000000000000000000000000
      000000000000AEAEAE00BABABA00B1B1B100AAAAAA00DADADA00737300000000
      00000000000000000000000000000000000000000000B97A0000B97A0000B97A
      000096620000734A0000DADADA00734A0000B97A0000B97A0000B97A0000B97A
      0000734A00000000000000000000000000000000000000000000000000000000
      000000000000AEAEAE00BABABA00B1B1B100AAAAAA00DADADA00737300000000
      00000000000000000000000000000000000000000000000000005A3B0000DC92
      0000FFFE5C0000AAFF0000000000996E2B00FFAA2500849C660000A8FB000075
      B000FF8E8E00E57A7A0000000000000000000000000000000000000000000000
      00000000000086868600BFBFBF00B8B8B800DADADA0073730000000000000000
      0000000000000000000000000000000000000000000000000000B97A0000B97A
      0000DADADA001A1A1A00DADADA00DADADA00734A0000B97A0000B97A00009662
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868600BFBFBF00B8B8B800DADADA0073730000000000000000
      000000000000000000000000000000000000000000000000000000000000B97A
      0000DC9200000092DC000000000025AAFF00FFAA250000AAFF00009AE8000000
      0000FFA3A300FF99990000000000000000000000000000000000000000000000
      00000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      000000000000000000000000000000000000000000000000000000000000B97A
      000092929200DADADA00FFFFFF00DADADA009662000096620000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A3B00008C5C00000000000016669900F9A61F00F1D39900A3E0FF00FFC7
      B100FFBCAF00FFABAB0000000000000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B97A00009292920096620000966200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DC920000B97A0000C2C2C200FFEF
      EF00FFC7B1009955550000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009662000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000996A6A00F9B0AB00D68C
      8C00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000092DC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000092DC000072AC0000000000000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFB84800C2C2C2003E3E
      3E006E6E6E003232320096620000000000000000000000000000000000000000
      00000000000000000000000000001F8BCF001D89CE006BC6FF001B4966000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00000000009595
      9500000000000000000000000000000000000000000000000000000000000092
      DC0048B8FF005FC1FF000092DC00008DD50000679C0000000000000000009191
      9100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B97A0000C2C2C2003E3E
      3E006E6E6E00734A000096620000000000000000000000000000000000000000
      0000000000002491D500238FD300218DD2008ED4FF001A4D6D001A4B6A001B49
      6700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026262600004A7300004A7300000000004A4A
      4A00F2F2F200000000000000000000000000000000000000000048B8FF0048B8
      FF005FC1FF00007AB9000092DC00007AB90025AAFF000092DC00000000006363
      6300F2F2F200000000000000000000000000000000006E6E6E00626262000000
      00000000000000000000000000000000000000000000B97A0000B97A0000B97A
      0000B97A0000B97A000096620000000000000000000000000000000000002A96
      DB002895D9002793D8008ED4FF0000629600228ED2006BC6FF00194D6E001A4C
      6B001A4A68000000000000000000000000000000000000000000000000000000
      0000000000003E3E3E00006296000062960026262600004A7300004D75000000
      0000AAAAAA0000000000000000000000000000000000000000000092DC004EC1
      FF00007AB9000092DC006BC6FF000062960000629600007AB900000000006262
      6200AAAAAA000000000000000000000000000000000062626200626262000000
      00000000000000000000000000000000000000000000B97A0000323232003232
      320032323200323232009662000000000000000000002F9CE1002E9ADF002C99
      DD008ED4FF00006296002794D8002592D6000E0E0E008ED4FF00194F7200194E
      6F001A4C6C001A4A690000000000000000000000000000000000000000004A4A
      4A00007AB900007AB9003E3E3E00006296000062960026262600004A73000000
      000058585800F2F2F2000000000000000000000000000000000000629600007A
      B9000092DC006BC6FF00006296000092DC006BC6FF000092DC00000000007777
      770094949400F2F2F200000000000000000000000000868686003E3E3E000000
      0000000000000000000000000000000000000000000032323200CECECE00CECE
      CE00CECECE00F2F2F2009662000000000000000000000092DC008ED4FF000062
      96002D99DE002B97DC002996DA008ED4FF00006296003B82AD000E5781001850
      7300194E70001A4D6D001A4B6A000000000000000000565656000092DC000092
      DC004A4A4A00007AB900007AB9003E3E3E00006296000077B600000000000000
      00006F6F6F00DADADA000000000000000000000000000C9AE800007AB9000032
      5000007AB900006296000092DC006BC6FF000092DC0000000000424242009292
      920096969600DADADA0000000000000000000000000000000000000000000000
      00000000000056565600E6E6E600C2C2C2000000000032323200CECECE00CECE
      CE00CECECE00E6E6E60096620000000000000000000000629600329FE300309D
      E2002F9BE0008ED4FF00006296003E89B7003D87B4003C85B1003B83AE002D74
      9F00004A7300194F7100194D6E000000000000000000198DD400565656000092
      DC000092DC004A4A4A00007AB900007AB90000000000000000004A4A4A008F8F
      8F00DADADA00737300000000000000000000000000006BC6FF001BA6F000004A
      7300004A73000092DC00006296000092DC000000000025252500747474009696
      9600DADADA007373000000000000000000000000000000000000000000000000
      00005656560056565600E6E6E600626262000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E0034A1E6008ED4
      FF00006296004291C200418FBF00408CBC003F8AB8003E88B5003D86B2003C83
      AF003A81AC00004A7300194F720000000000000000000000000025AAFF005656
      56000092DC0000AAFF000000000000000000474747009696960096969600DADA
      DA0073730000000000000000000000000000000000000092DC006BC6FF00007A
      B900007AB90000629600004A7300005C8B00000000005757570096969600DADA
      DA0073730000000000000000000000000000000000003E3E3E00000000005656
      5600565656006262620062626200E6E6E60086868600626262009E9E9E00C2C2
      C20000000000000000000000000000000000000000008ED4FF00006296004699
      CC004596C9004394C6004292C300418FC000408DBC003F8BB9003E89B6003D86
      B3003C84B0003B82AE001A4056000000000000000000000000004A86AC0049A2
      DB00000000000000000052525200A8A8A800A2A2A2009F9F9F00DADADA007373
      00000000000000000000000000000000000000000000000000000000000025AA
      FF000092DC00007AB900007AB900008AD0000000000089898900DADADA007373
      0000000000000000000000000000000000000000000000000000565656005656
      5600626262003E3E3E003E3E3E003E3E3E0062626200E6E6E600868686008686
      8600000000000000000000000000000000000000000000000000489ED300479C
      D0004699CD004597CA004495C7004392C4004290C000418EBD003F8BBA003E89
      B70025516C000000000000000000000000000000000000000000000000000000
      0000000000009F9F9F00BABABA00B1B1B100AAAAAA00DADADA00737300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C9AE80025AAFF000074AE0000000000DADADA00737300000000
      0000000000000000000000000000000000000000000000000000565656006262
      62003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E0062626200E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000489DD100469ACE004598CB004496C8004393C5004291C2002D6385000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5A5A00BFBFBF00B8B8B800DADADA0073730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DADADA0073730000000000000000
      0000000000000000000000000000000000000000000000000000626262003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000479BCF004699CC00295A790000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B600DADADA0073730000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A4A4A400DADADA0073730000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A009696000096960000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000868686009696000096960000FFFF6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096960000DCDC000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003E3E3E003E3E3E0000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000E9E9
      E900000000000000000000000000000000000000000000000000000000009662
      0000966200009662000096620000966200009662000096620000966200009662
      0000966200000000000000000000000000000000000000000000EAEAEA00D9D9
      D900C9C9C900B9B9B900A8A8A800989898008888880078787800686868005858
      5800474747003636360000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00E3E3E300E9E9
      E90000000000000000000000000000000000000000000000000000000000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A
      0000B97A000000000000000000000000000000000000000000006D6D6D007C7C
      7C008A8A8A00A0A0A000AAAAAA00A0A0A000757574004F4F4F00393939002A2A
      2A00252525001414140000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C1C1C100D5D5D500DBDBDB00E1E1E100E3E3
      E30000000000000000000000000000000000000000000000000000000000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A
      0000B97A00000000000000000000000000000508040005080400050804000508
      0400050804000508040005080400050804000508040005080400050804000508
      0400050804000508040005080400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000525252007D7D7D009F9F9F00D3D3D300D8D8D800DEDEDE00E1E1
      E10000000000000000000000000000000000000000000000000000000000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A
      0000B97A0000000000000000000000000000050804008E6636008D693D00946C
      42009A7345009A734500A4794900946C4200140600009B947500978966008A83
      65007B73580067624E0005080400000000000000000000000000000000000000
      00000000000000000000A8A8AA00B1B1B300BBBBBD00C4C4C600CECECF00D8D8
      D900D9D9DA000000000000000000000000000000000000000000000000000000
      000000000000373737004E4E4E0076767600D0D0D000D5D5D500D8D8D800DEDE
      DE0000000000000000000000000000000000000000000000000000000000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A
      0000B97A0000000000000000000000000000050804008E6F4800A3794D00A173
      3F008D5D270073431000663707004E2E0D000703000014100B00524939007F71
      5800857C6200806F550005080400000000000000000000000000000000000000
      0000000000009E9EA000A8A8AA00B1B1B300BBBBBD00C4C4C600CECECF00D0D0
      D100FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDCDCD00D3D3D300D6D1CC00DCBA
      9200000000000000000000000000000000000000000000000000000000009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E0000000000000000000000000005080400AA855400753D01007C44
      07009C642800B57F4500C08B5400C38D550014060000887B5F0064533E003623
      1600221E15007B73580005080400000000000000000000000000000000000000
      0000959597009E9EA000A8A8AA00B1B1B300BBBBBD00C4C4C600C7C7C800C7C7
      C800000000000000000000000000000000000000000000000000000000000000
      00000C0C54002525FF006666F30000000000CCC3BA00D3AB7C00D7A97200D9AC
      7600000000000000000000000000000000000000000000000000000000009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E0000000000000000000000000005080400BA935A00C89A6200CAA2
      6800D8A25E00D8A25E00D49E6200D9A668001F0D0400DCCCA400C6B89600C6A8
      76009C8760009789660005080400000000000000000000000000000000006263
      02006D6D020076770100818101008A8B0100959501009798010097980100DCDC
      00000000000000000000000000000000000000000000000000000C0C54002525
      FF002525FF002525FF006B6BFF0000000000CE9D6100D0A06500D5A66E00D7A9
      7200000000000000000000000000000000000000000000000000000000009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E0000000000000000000000000005080400D4A76B00E3AB6A00E3AB
      6A00EBB26C00F0B78000100D09000000000000000000DCC99700ECD39400D7BB
      8700D7AC7300A895690005080400000000000000000000000000585902006263
      02006D6D020076770100818101008A8B01008E8E01008E8E01008E8E01000000
      00000000000000000000000000000000000000000000000000002525FF00FFFF
      FF002525FF002525FF006B6BFF0000000000CC9B5D00CE9D6100D0A06500D2A3
      6900000000000000000000000000000000000000000000000000000000009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E0000000000000000000000000005080400F3BD8100F0B78000F8CA
      8400F8CA8400F8CA840000000000FCFDB700FDFAA800FDFAA800FDE9A400F9D9
      9600E7C58A00C6A87600050804000000000000000000FEFE4800FFFF83000000
      000000000000DCDC0000F8F81C00FEFE3C00FFFF9700FFFF8B00F0F014000000
      00000000000000000000000000000000000000000000000000002525FF002525
      FF002525FF004848FF00B1B1FF0000000000C7955400C9985900CC9B5D00CE9D
      610000000000000000000000000000000000000000000000000000000000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A
      0000B97A000000000000000000000000000005080400FCD78800F8D29000FDE7
      8A00FCD78800FBD77A0000000000FDFDD500FDFDC800FCFDB700FCFDB700FDE9
      A400F9D99600E4BB830005080400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002525FF004848
      FF00B1B1FF000000000000000000C08C4700C38F4C00C5925000C7955400C998
      590000000000000000000000000000000000000000000000000000000000B97A
      0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000B97A
      0000B97A000000000000000000000000000005080400FDFAA800FDF69800FDF6
      9800FDF69800FDE78A0000000000FDFDD500FDFDD500FDFDC800FDFDC800FCFD
      B700FDE9A400FCD7880005080400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7803600B9833A00BE894300C08C4700C38F4C00836033000000
      000000000000000000000000000000000000000000000000000000000000DC92
      0000DC920000B97A0000B97A0000B97A0000B97A0000B97A0000B97A0000FFC6
      6B00FFC66B0000000000000000000000000005080400FCFDB700FCFDB700FDE7
      8A00FDFAA800FEF18C0057523300B7B4A300FDFDD500FDFDC8006B665300FCFD
      B700FCFDB700FDE7960005080400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B57D3100B7803600B9833A007E5A2A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B97A000096620000966200009662000096620000B97A00000000
      00000000000000000000000000000000000005080400FFFFFF00FDFDC800FDE7
      9600FDFAA800FDF69800E1CE7C0009040100FDFDD500FDFDD5006B665300FDFD
      C800FDFDC800FDFAA80005080400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B077290077521E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B97A0000734A0000734A0000734A000050320000B97A00000000
      00000000000000000000000000000000000005080400FFFFFF00FDFDD500FCFD
      B700FDFAA800FDE78A00FBD77A001406000005080400FDFDC800FDFDD500FDFD
      C800FDFDC800FCFDB70005080400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000508040005080400050804000508
      0400050804000508040005080400000000000508040005080400050804000508
      0400050804000508040005080400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF00C003000000000000CBF3000000000000
      C5F3000000000000CAF3000000000000CCF3000000000000CCF3000000000000
      CCF3000000000000CCF3000000000000CCF3000000000000CC73000000000000
      CCF3000000000000CCF3000000000000C8F3000000000000C0F3000000000000
      C003000000000000C007000000000000FFFFFFFFFDFFC007F9FFFF1FF87FC007
      F07FFC1FF01FC007F01FF00FE007C007E007C00FC001C007E00180078001C007
      C001C0078001C007C00180038001C007800380038001C007800380018001C007
      000780018001C0070003F0018003C007C001F8078007C007F000F81FE00FC007
      FC11FC7FFC1FC007FF1BFDFFFE3FC007FFFFFFFFFFFFFFFFFF1FF1FFFFFFFF1F
      FC1FF0FF8003FC1FF00FE07F8003F00FC00FE03F8003C00F8007C01F80038007
      C007C00F8003C007C003801B8003C003C00380018003E003800100018003E001
      800180018003F001C001C0018003F001C007E0018003F807E01FF0838003F81F
      FC7FF88FFFFFFC7FFDFFFFFFFFFFFDFFFFFFFE7F004FFE7FFFCFF83F0007FC3F
      FF87E01F0007F81FFF07800F0003F007FF07000F0003E0018F07000F0001C001
      8307000F000080010103000F000000038201000FE0010003E3E1000FE0030007
      FFE10001F0078007FC010000F00F800FFC010000F81FC00FFE010000F81FC0DF
      FF038180FC3FE1FFFF8FC780FE7FF3FFE7CFFFCFFFFFFFCF8187FF87FF1FFF87
      0007FF07FC1FFF070003FE03F00F9E030003FC03C00F00038001F80180070001
      8000C00080070000C000000000030000E001000180038001E003000300010003
      F007000780010007F00FC00F8001000FF81FE81F8007801FF81FF81F801FC81F
      FC3FFC3F807FFC3FFE7FFE7FC5FFFE7FFFFFFFFFFFDFFFFFFFFFFFF9FF0787F9
      FDFFFC60FC030060E00FF020F0010020C003C000C0010000C003000080010000
      8001000080010000800100008001000080010001C001000180010003C0010003
      C0030003C0010003C0038003C0018003C003C00FC001C00FE0070001C0030001
      E07F8001E0078001FFFF8001F01F8001FFCFFFFFFFCFFFFFFF87FF1FFF87FFFF
      FF07FC1FFF07F83FFE03F00F0003E00FFC03C00F0003C007F80180070001C003
      F000C00700008003E000800300008003E001000300018003E003000100038003
      F007800100078003F00F8001F00F8007F81FC007F81F800FF81FC01FF81F001F
      FC3FE47FFC3F07FFFE7FFDFFFE7F9FFFFFCFFFFF00CFFFFFFF87FFF90087DFFF
      FF07FC6000078FFFFE03F0200003C7FFFC03C0000003E3FFF80100000001E07F
      F00000000000C03FE00000000000C00FE001000100018003E003000300038001
      F0070003F0078001F00F8003F00FC001F81FC00FF81FE001F81FE03FF81FF001
      FC3FF0FFFC3FFF03FE7FFBFFFE7FFF8FFFBFFFCFF9CFFF81FE1FFF87E007FF00
      F80FFE078007BF00E007F80380030F008003E00380030F000001800100010800
      0000000000001000000000000000200000008001000100070000800380038007
      0001C007E0078007C007F00FF00F8007F01FF81FF81F800FFC7FF81FF81FE01F
      FFFFFC3FFC3FF83FFFFFFE7FFE7FFE7FFFEFC0038003FFFFFF87C0038001FFFF
      FE07C0038001FFFFF807C0030001F803F007C0030001F003F007C0030001E003
      F007C0030001C007E007C003000180078007C0030001000F8007C0030001000F
      8007C0030001881F8007C0030001FFFF800FC0030001FFFFF01FC0030001FFFF
      F07FF00F0001FFFFF1FFF00F0101FFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 211
    Top = 68
    Bitmap = {
      494C010118001D00440010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
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
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F0000000000FFFFFF0000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      80000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F0000000000FFFFFF00000000000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      8000000080000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00000000007F7F7F0000000000FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C0000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      8000000080000000800000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F007F7F7F000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0C000FFFF
      FF00C0C0C000C0C0C00080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      8000FFFF0000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F00FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      8000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF00000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6CECE009494940039393900525252009C949400C6C6
      C600D6D6D6008484840000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B5848400000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000800000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000007F7F7F00FFFFFF000000
      00000000000000000000FFFFFF000000000000000000000000009C9C9C009C9C
      9C00F7F7F700FFFFFF00D6D6D6009C9C9C004242420021182100211821003131
      310063636300848484008C8C8C00000000000000000000000000C6A59C00FFEF
      D600C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A5
      9C00C6A59C00EFCE9C00B5848400000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      000000000000000000000000000000000000000000000000800000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000948C8C009C9C9C00EFEFEF00FFFF
      FF00EFE7E700C6C6C6009C9C9C008C8C8C009494940084848400636363003939
      3900182121002118210073737300000000000000000000000000C6ADA500FFEF
      E700F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B5848400000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C6000000000000000000000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00000000009C9C9C00E7E7E700E7E7E700BDBD
      BD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C8C00949494009C94
      94008C8C8C006B6B6B0084848400000000000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEB500F7D6B500F7D6AD00EFCE
      9C00EFCE9C00EFCE9400B5848400000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD60000000000000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF000000000094949400ADADAD00A5A5A500ADAD
      AD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6C600ADADAD009C9C
      9C00948C8C00949494008C8C8C00000000000000000000000000CEB5AD00FFFF
      F700C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A5
      9C00C6A59C00EFCE9C00B5848400000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF0000000000000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000948C8C00ADADAD00C6C6C600CECE
      CE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B50094949400000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF00FFEFE700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEBD00F7D6
      AD00F7D6A500F7D6A500B5848400000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C600000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000000000009C9C9C00CECECE00CECE
      CE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500A5A5
      A500B5B5B500C6BDBD00A5A5A500000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEC600F7DE
      BD00F7D6B500F7D6AD00B5848400000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C600000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF000000000000000000000000009C9C9C00BDBD
      BD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7DE00D6D6D600CECE
      CE00B5B5B5009494940000000000000000000000000000000000D6BDB500FFFF
      FF00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A5
      9C00C6A59C00F7DEB500B5848400000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C6000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000009C9C
      9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6D600D6D6D600C6C6
      C600ADADAD000000000000000000000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D600F7E7CE00F7DE
      C600F7DEC600F7D6B500B5848400000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A00007308000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6CE00CECECE009494
      9400000000000000000000000000000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFEFDE00FFEF
      D600E7DEC600C6BDAD00B5848400000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600000000000000000000008000000080000000
      000000FFFF0000FFFF00000000000000000000000000FFFFFF00000000007F7F
      7F000000000000000000FFFFFF00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00FFF7EF00F7E7D600C6A5
      9400B5948C00B58C8400B5848400000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD290008841000000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9400000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE00BD8C
      7300EFB57300EFA54A00C6846B00000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A5180000000000000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C694
      7B00FFC67300CE9473000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      18000884100000000000000000000000000000000000000080000000800000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF0000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      0800000000000000000000000000000000000000000000008000FFFF000000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000AD7B6B00AD7B6B00AD7B6B00AD7B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B584840000000000000000000000000000000000AD7B
      6B00DEA57B00EFC69400E7C6A500DEB58C00AD7B6B00AD7B6B00AD7B6B00AD7B
      6B00000000000000000000000000000000000000000000000000000000000000
      000094633900734A290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424242004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500F7CE9C00F7CE9400F7CE
      9400F7CE9400F7D69C00B5848400000000000000000000000000AD7B6B00DEB5
      8C00EFB57B00EFC69C00EFD6B500EFCEA500C69C73007B4A4A008C525200AD7B
      6B00AD7B6B00AD7B6B0000000000000000000000000000000000000000000000
      0000FFEFD600734A2900734A2900000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C636300424242004242
      42008C4A390094521800B55A0000424242008C6363008C6363008C6363008C63
      63008C6363008C63630000000000000000000000000000000000C6A59C00FFEF
      D600848484008484840084848400848484008484840084848400848484008484
      840084848400F7CE9C00B58484000000000000000000AD7B6B00E7BD9400EFC6
      8C00EFB57B00EFC6A500F7E7CE00F7D6AD00C69C84007B4A4A007B4A4A00CEA5
      7B00EFBD8C00D6A58400AD7B6B00000000000000000000000000000000000000
      0000FFEFE700CEAD8C00734A2900734A29000000000000000000000000000000
      000000000000000000000000000000000000000000008C636300B55A0000B55A
      0000AD5A1000B55A0000C65A00004242420008A5180000840000008400000084
      000008A518008C63630000000000000000000000000000000000C6ADA500FFF7
      E70084FF840084FF840084FF840084FF840084FF840084FF840084FF840084FF
      840084FF8400F7CE9C00B584840000000000AD7B6B00F7CE9C00F7D69400EFC6
      8C00EFB57B00F7CEAD00FFEFDE00FFE7C600CEA58C007B4A4A007B4A4A00CEA5
      7B00EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      0000FFEFE700FFE7CE00CEAD8C00734A2900734A2900734A2900734A2900734A
      290000000000000000000000000000000000000000008C636300C65A0000C65A
      0000C65A0000C65A0000CE6300004242420031C64A0010AD180010AD180010AD
      1800009C00008C63630000000000000000000000000000000000C6ADA500FFF7
      E70084FF840084FF840084FF840084FF840084FF840084FF840084FF840084FF
      840084FF8400F7CE9400B584840000000000AD7B6B00F7D69C00F7D69400F7C6
      8C00F7B57300F7CEAD00FFF7EF00FFEFDE00CEAD9C00734242007B4A4A00CEA5
      7B00EFBD8C00DEB58400AD7B6B0000000000000000000000000094633900734A
      2900FFE7CE00FFEFD600FFEFD600FFDEB500FFDEB500FFE7CE00CEAD8C009463
      3900734A2900734A29000000000000000000000000008C636300C65A0000CE63
      0000CE630000CE630000CE6300004242420031C64A0021BD310021BD310029C6
      4A0042D66B008C63630000000000000000000000000000000000C6ADA500FFFF
      F700848484008484840084848400848484008484840084848400848484008484
      840084848400F7CE9C00B584840000000000AD7B6B00F7D69C00FFD69400E7BD
      9400B5A59400F7CEAD00FFFFF700FFF7EF00DEC6B50094635A0084524A00CEA5
      8400EFBD8C00DEB58400AD7B6B00000000000000000094633900E7C6AD00E7C6
      AD00FFE7CE00FFEFD600946342008C392100B54A1000B5633900FFE7CE00FFDE
      B500CEAD8C00734A2900734A290000000000000000008C636300CE630000CE6B
      0000CE6B0000CE6B0000D6730000424242000084000021AD310029BD390031C6
      4A0042D66B008C63630000000000000000000000000000000000DEC6B500FFFF
      FF0084FF840084FF840084FF840084FF840084FF840084FF840084FF840084FF
      840084FF840084FF8400B584840000000000AD7B6B00FFD69400D6CEA50052A5
      E7002184F70084ADDE00FFFFEF00FFF7EF00FFF7E700F7E7CE00E7C6A500E7C6
      9C00E7BD9400DEB58400AD7B6B000000000094633900E7C6AD00FFE7CE00FFEF
      E700FFEFD600FFEFD600FFEFD6008C3921008C210000FFEFD600FFEFD600FFE7
      CE00FFDEB500CEAD8C00734A2900734A2900000000008C636300CE6B0000CE6B
      0000DE841800FFF7DE00D673000042424200008400000084000000840000009C
      0000009C00008C63630000000000000000000000000000000000DEC6B500FFFF
      FF0084FF840084FF840084FF840084FF840084FF840084FF840084FF840084FF
      840084FF840084FF8400B584840000000000AD7B6B009CC6C60042B5FF0031AD
      FF00319CFF001884FF0084BDF700FFFFEF00FFF7EF00FFEFDE00F7E7CE00EFD6
      B500EFC69C00DEB58C00A57B7B0000000000E7C6AD00FFE7CE00FFEFE700FFEF
      D600FFEFD600FFEFD600FFEFD6008C3921008C210000FFEFD600FFEFD600FFEF
      D600FFE7CE00FFDEB500CEAD8C00734A2900000000008C636300D6730000D673
      0000DE7B0800D6730000D673000042424200FFE7C600FFE7C600FFE7C600FFE7
      C600FFE7C6008C63630000000000000000000000000000000000DEC6B500FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      840084848400F7DEB500B584840000000000429CF70042A5FF0042ADFF0042B5
      FF0039A5FF002994FF001884FF008CC6F700FFFFEF00FFF7EF00FFEFDE00FFE7
      C600DEC6B500948C94009C7B840000000000FFF7EF00FFEFE700FFEFE700FFEF
      D600FFEFD600FFEFD600842910008C3921008C210000FFEFD600FFEFD600FFEF
      D600FFEFD600FFE7CE00FFE7CE00734A2900000000008C636300D6730000D673
      0000DE7B0000DE7B0000DE7B000042424200FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD6008C63630000000000000000000000000000000000DEBDB500FFFF
      FF0084FF840084FF840084FF840084FF840084FF840084FF840084FF840084FF
      840084FF8400F7DEB500B58484000000000000000000429CFF0042A5FF0042AD
      FF0042B5FF0039A5FF002994FF001884FF008CC6F700FFFFEF00FFFFEF00D6D6
      D600737BAD007B7394000000000000000000FFF7EF00FFF7EF00FFEFE700FFEF
      E700FFEFD600FFEFD60094634200842910006B180000FFEFD600FFEFD600FFEF
      D600FFEFD600FFE7CE00FFE7CE00734A2900000000008C636300DE7B0000E77B
      0000E77B0000E77B0000EF7B000042424200FFF7D600FFF7DE00FFF7DE00FFF7
      DE00FFF7DE008C63630000000000000000000000000000000000DEC6B500FFFF
      FF0084FF840084FF840084FF840084FF840084FF840084FF840084FF840084FF
      840084FF8400C6BDAD00B5848400000000000000000000000000429CF70042A5
      FF0042ADFF0042ADFF0039A5FF002994FF001884FF0094C6FF00B5CEE7004A6B
      BD00526BA500000000000000000000000000FFE7CE00FFF7EF00FFF7EF00FFEF
      E700FFEFE700FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFE7CE00FFF7EF00CEAD8C0094633900000000008C636300FF840000F784
      0000EF7B0000EF7B0000EF7B000042424200FFF7D600FFF7D600FFF7D600FFF7
      D600FFF7D6008C63630000000000000000000000000000000000E7C6B500FFFF
      FF008484840084848400848484008484840084848400FFF7EF00F7E7D600C6A5
      9400B5948C00B58C8400B58484000000000000000000000000000000000042A5
      FF0042ADFF0042B5FF0042ADFF00319CFF002994FF001884FF00316BE7003163
      C6000000000000000000000000000000000000000000FFE7CE00FFF7EF00FFF7
      EF00FFEFE700FFEFE700FFEFE7009C422100CE734200FFEFD600FFEFD600FFE7
      CE00FFF7EF00CEAD8C009463390000000000000000008C636300FF840000FF84
      0000F7840800F7840000FF84000042424200FFF7D600FFF7D600FFF7D600FFF7
      D600FFF7D6008C63630000000000000000000000000000000000E7C6B500FFFF
      FF0084FF840084FF840084FF840084FF840084FF840084FF8400E7CECE00BD8C
      7300EFB57300EFA54A00C6846B00000000000000000000000000000000000000
      000042A5FF0042ADFF0042B5FF0039ADFF003994F7001831B5003952DE000000
      0000000000000000000000000000000000000000000000000000FFE7CE00FFFF
      FF00FFF7EF00FFF7EF00FFF7EF008400000084000000FFEFD600FFE7CE00FFEF
      D600CEAD8C0094633900000000000000000000000000000000008C6363008C63
      6300DE732900E77B1800FF840000424242008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000EFCEBD00FFFF
      FF0084FF840084FF840084FF840084FF840084FF840084FF8400E7D6CE00C694
      7B00FFC67300CE94730000000000000000000000000000000000000000000000
      00000000000042A5FF0042ADFF00000000000000000018109400394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7CE00FFF7EF00FFF7EF00FFEFD600FFEFD600FFDEB500CEAD8C009463
      3900000000000000000000000000000000000000000000000000000000000000
      00008C6363008C6363008C636300424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018189C00394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500DEBDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A5525200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD735200C65A0000AD4A
      00000000000000000000000000000000000000000000AD5A5A00AD5A5A00E7C6
      C600E7C6C600C6CEC600C6CEC600C6CEC600C6CEC600AD5A5A00943131000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A000000000000000000000000000000
      00000000000000000000000000000000000000000000B55A3100C65A0000CE63
      0000B5521000000000000000000000000000BD7B7300C65A5A00C65A5A00E7C6
      C6009C393900B5737300C6CEC600F7F7F700F7F7F700C65A5A00943131000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B55A3100C663
      0000CE630000B55A21000000000000000000BD7B7300C65A5A00C65A5A00C694
      8C009C3939009C4A4A00E7C6C600C6CEC600F7F7F700C65A5A00943131000000
      00009431310000000000000000000000000000000000848484006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B008484840000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B55A
      2100CE630000C6630000C684630000000000BD7B7300C65A5A00C65A5A00C694
      8C00C6948C00BDA5A500BDA5A500E7C6C600C6CEC600C65A5A0094313100C65A
      5A0094313100000000000000000000000000000000006B6B6B00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6006B6B6B006B6B6B00000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000AD4A0000BD5A0000BD5A
      0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300000000000000
      0000AD4A0000CE630000B54A000000000000BD7B7300AD524A00B55A5A00C65A
      5A00C65A5A00C65A5A00C65A5A00C65A5A00C65A5A00C65A5A0094313100C65A
      5A0094313100000000009431310000000000000000006B6B6B00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6006B6B6B00848484006B6B6B000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A0000000000B5520000D6730000CE6B
      0000CE630000CE630000CE630000CE630000C6630000BD6B4200000000000000
      0000CE9C8400C6630000C6630000C6846300BD7B7300AD524A00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700C65A5A0094313100C65A
      5A0094313100C65A5A00943131000000000000000000848484006B6B6B00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6006B6B6B0084848400848484006B6B
      6B000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A0000000000BD5A0000DE7B0000D673
      0000CE630000A5421000CE9C8400CE9C8400CE9C840000000000000000000000
      000000000000AD4A0000CE630000B5521000BD7B7300AD524A00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700C65A5A0094313100C65A
      5A0094313100C65A5A00943131000000000000000000000000006B6B6B00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE006B6B6B00848484008484
      84006B6B6B0000000000000000000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD52520000000000C6630000E7840000CE63
      0000DE730000CE630000C6846300000000000000000000000000000000000000
      000000000000C6734200CE630000B54A0000BD7B7300AD524A00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700C65A5A0094313100C65A
      5A0094313100C65A5A0094313100000000000000000000000000000000006B6B
      6B00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE006B6B6B008484
      8400848484006B6B6B00000000000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A0000000000CE630000F7940000B552
      1000B5520000DE7B0000CE6B0000BD7B52000000000000000000000000000000
      000000000000C6734200CE630000B54A0000BD7B7300AD524A00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700C65A5A0094313100C65A
      5A0094313100C65A5A0094313100000000000000000000000000000000000000
      00006B6B6B00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE006B6B
      6B0084848400848484006B6B6B000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A0000000000CE6B0800FF9C0800CE84
      420000000000B5520000E7840000CE6B0000BD63310000000000000000000000
      000000000000B54A0000CE630000B5521000BD7B7300AD524A00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700C65A5A0094313100C65A
      5A0094313100C65A5A0094313100000000000000000000000000000000000000
      0000000000006B6B6B00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE006B6B6B00848484006B6B6B000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000CE732100FFAD3100CE84
      4A000000000000000000C6631000E7840000E77B0000BD520000C67B5200C68C
      7300B5521000C6630000C6630000C6846300BD7B7300AD524A00D6D6D600CEB5
      B500CEB5B500CEB5B500CEB5B500CEB5B500D6D6D600AD524A0094313100C65A
      5A0094313100C65A5A0094313100000000000000000000000000000000000000
      000000000000000000006B6B6B00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE006B6B6B006B6B6B000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000CE7B3900FFBD6300C67B
      5200000000000000000000000000B55A2100E77B0000E7840000DE7B0000D673
      0000CE6B0000C6630000AD4A1000000000000000000000000000BD7B7300AD52
      4A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700C65A
      5A0094313100C65A5A0094313100000000000000000000000000000000000000
      00000000000000000000000000006B6B6B00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE006B6B6B000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A0000000000CE947B00C6845A000000
      000000000000000000000000000000000000CE9C8400C6631000CE6B0000CE6B
      0000BD5A0000BD6B420000000000000000000000000000000000BD7B7300AD52
      4A00D6D6D600CEB5B500CEB5B500CEB5B500CEB5B500CEB5B500D6D6D600AD52
      4A0094313100C65A5A0094313100000000000000000000000000000000000000
      000000000000000000000000000000000000848484006B6B6B006B6B6B006B6B
      6B006B6B6B0084848400848484000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700C65A5A0094313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD7B7300AD524A00D6D6D600CEB5B500CEB5B500CEB5B500CEB5B500CEB5
      B500D6D6D600AD524A0094313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000298C
      BD000000000000000000000000000000000000000000CEADAD00AD8484007B5A
      52005A423900634A42006B5A5200846B6B009C8C8400B5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD4A0000C65A0000BD735200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298CBD0084BD
      D6000000000000000000000000000000000000000000CEA5A500CE9C9C00D6A5
      9C00CE9C9C00BD8C8C009C736B007B5A5200634A42005A4239006B524A007B6B
      630094847B00AD9C94000000000000000000000000000000000000000000B552
      1000CE630000C65A0000B55A3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CDE008CD6
      EF0084D6F700CEC6BD00FFEFDE00F7EFE700F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00A57B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000873B500E7FFFF0084BD
      D6000000000000000000000000000000000000000000CEA5A500CE9C9C00DEAD
      9C00FFD6A500EFC69C00EFB59C00D6A59C00CE9C9C00C6949400A5737300845A
      520073524A005A4239006B5A4A0094847B000000000000000000B55A2100CE63
      0000C6630000B55A310000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF008CF7FF00CEC6BD00F7E7D600F7E7D600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7DEC600F7E7D600A57B7300000000000000000000000000298CBD0039A5
      D60039A5D60039A5D60039A5D60039A5D600298CBD00E7FFFF00E7FFFF00DEEF
      FF0039A5D60000000000000000000000000000000000CEA5A500EFC69C00CE9C
      9C00EFCEAD00FFE7B500FFDEAD00FFD6A500FFD6A500F7C69C00EFB59C00DEAD
      9C00CE9C9C00CE9C9C00A57B73006B5A520000000000C6846300C6630000CE63
      0000B55A21000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF0084EFFF00CEC6BD00F7E7DE00FFE7CE00F7DEBD00F7DEBD00F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B73000000000000000000298CBD00E7FFFF00E7FF
      FF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FF
      FF00E7FFFF0039A5D600000000000000000000000000CEA5A500F7D6AD00EFCE
      AD00CE9C9C00F7E7BD00FFF7C600FFEFBD00FFE7B500FFE7B500FFDEAD00FFD6
      A500F7C69C00CE9C9C00CE9C9C0063524A0000000000B54A0000CE630000AD4A
      00000000000000000000C6846300BD5A0000BD5A0000BD5A0000BD5A0000BD5A
      0000BD5A0000BD5A0000AD4A00000000000000000000299CDE00ADEFFF00A5EF
      FF0094EFFF00CEC6BD00F7E7E700F7E7D600F7DEC600F7DEC600F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B73000000000000000000298CBD00CEF7FF00E7FF
      FF00CEF7FF00E7FFFF00CEF7FF002929290052525200CEF7FF00E7FFFF00CEF7
      FF00E7FFFF0039A5D600000000000000000000000000CEA5A500F7E7BD00FFF7
      C600E7CEB500D6ADA500FFFFD600FFFFD600FFFFCE00FFFFC600FFF7C600FFEF
      BD00D6A59C00DEAD9C00CE9C9C00634A4200C6846300C6630000C66300000000
      00000000000000000000BD6B4200C6630000CE630000CE630000CE630000CE63
      0000CE6B0000D6730000B55200000000000000000000299CDE00B5EFFF00ADEF
      FF00A5EFFF00CEC6BD00F7EFE700F7EFDE00FFE7CE00FFE7CE00FFE7CE00F7DE
      C600F7E7D600EFE7DE00A57B73000000000000000000298CBD00CEF7FF00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7
      FF00CEF7FF0039A5D600000000000000000000000000CEA5A500F7E7C600FFFF
      D600FFFFCE00DEB5A500DEBDB500FFFFE700FFFFDE00FFFFDE00FFFFD600D6AD
      A500DEB5A500FFD6A500CE9C9C00634A4200B5521000CE630000AD4A00000000
      0000000000000000000000000000CE9C8400CE9C8400CE9C8400A5421000CE63
      0000D6730000DE7B0000BD5A00000000000000000000299CDE00BDEFFF00BDF7
      FF00ADF7FF00CEC6BD00FFF7EF00FFE7CE00FFDEBD00F7DEBD00F7DEBD00FFDE
      B500F7DEC600F7EFE700A57B730000000000000000004A9CC600CEF7FF00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF002929290052525200CEF7FF00CEF7FF00CEF7
      FF00CEF7FF0039A5D600000000000000000000000000CEA5A500F7E7CE00FFFF
      DE00F7E7C600D6ADA500CE9C9C00DEBDBD00F7E7DE00F7EFDE00D6ADA500DEBD
      AD00FFF7C600FFEFBD00CE9C9C00634A4200B54A0000CE630000C67342000000
      00000000000000000000000000000000000000000000C6846300CE630000DE73
      0000CE630000E7840000C66300000000000000000000299CDE00C6EFFF00CEF7
      FF00BDF7FF00CEC6BD00FFF7F700FFF7EF00F7EFE700F7EFE700F7EFDE00F7EF
      DE00F7EFE700EFE7DE00A57B7300000000000000000039A5D600CEF7FF00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF005252520029292900849CA500CEF7FF00CEF7
      FF00CEF7FF0039A5D600000000000000000000000000CEA5A500EFDECE00DEBD
      AD00CE9C9C00DED6D600DEEFF700CEC6C600BDADB500CE9C9C00C6A5A500DEBD
      AD00FFFFCE00FFFFCE00CE9C9C00634A4200B54A0000CE630000C67342000000
      000000000000000000000000000000000000BD7B5200CE6B0000DE7B0000B552
      0000B5521000F7940000CE6300000000000000000000299CDE00CEEFFF00DEF7
      FF00CEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFF7F700F7F7F700EFE7
      DE00D6BDB500C6ADA500A57B7300000000000000000039A5D600B5EFFF00B5EF
      FF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00525252002929290052525200B5EF
      FF00B5EFFF0039A5D600000000000000000000000000CEA5A500CE9C9C00BDB5
      BD00FFFFFF00FFFFFF00F7FFFF00EFFFFF00E7FFFF00DEFFFF00DEF7F700CEAD
      AD00DEBDAD00FFFFD600CE9C9C0063524A00B5521000CE630000B54A00000000
      0000000000000000000000000000BD633100CE6B0000E7840000B55200000000
      0000CE844200FF9C0800CE6B08000000000000000000299CDE00CEEFFF00E7FF
      FF00DEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECE
      C600E7AD7300C6AD8C0000000000000000000000000042B5F700B5EFFF00B5EF
      FF00B5EFFF002929290052525200B5EFFF00B5EFFF002929290029292900B5EF
      FF00B5EFFF0042B5F700000000000000000000000000D6B5B5009C8C9C005294
      BD00FFFFFF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00EFFFFF00E7FFFF00D6EF
      F700B59C9C00DEBDB500CE9C9C00735A5200C6846300C6630000C6630000B552
      1000C68C7300C67B5200BD520000E77B0000E7840000C6631000000000000000
      0000CE844A00FFAD3100CE7321000000000000000000299CDE00D6F7FF00F7FF
      FF00E7FFFF00CEC6BD00FFEFE700FFF7EF00FFF7EF00FFEFEF00FFF7EF00E7C6
      BD00C6AD8C00299CDE0000000000000000000000000042B5F700B5EFFF00B5EF
      FF00B5EFFF002929290029292900B5EFFF00849CA5002929290029292900B5EF
      FF00B5EFFF0042B5F70000000000000000000000000000000000BDADB500428C
      B500DEEFF700BDDEE7008CBDD60084B5CE00428CB500398CB500297BA5004273
      9C0073849C00CE9C9C00CE9C9C009C8C840000000000AD4A1000C6630000CE6B
      0000D6730000DE7B0000E7840000E77B0000B55A210000000000000000000000
      0000C67B5200FFBD6300CE7B39000000000000000000299CDE00DEF7FF00FFFF
      FF00F7FFFF00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6
      BD0084C6DE00299CDE000000000000000000000000005AC6F700B5EFFF00B5EF
      FF00B5EFFF00849CA50029292900292929002929290029292900849CA500B5EF
      FF00B5EFFF0042B5F7000000000000000000000000000000000000000000317B
      A5004A7B9C00529CBD005ABDDE0073C6E7008CCEFF0094CEFF0094CEFF008CC6
      FF00B5A5BD00CE9C9C00BD9C9400000000000000000000000000BD6B4200BD5A
      0000CE6B0000CE6B0000C6631000CE9C84000000000000000000000000000000
      000000000000C6845A00CE947B000000000000000000299CDE00DEF7FF00F7F7
      F700ADC6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00B5D6D600DEFF
      FF0084D6F700299CDE000000000000000000000000005AC6F70094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0042B5F70000000000000000000000000000000000000000000000
      0000C6BDB500CE9C9C00A5E7EF0094EFFF0094DEFF0094DEFF009CCEF700BDA5
      B500C6949400C6ADA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00DEF7FF00DECE
      C600BDA59C00A57B7300A57B7300A57B7300A57B7300A57B7300BD9C9400E7EF
      E70094DEF700299CDE000000000000000000000000008CD6F70094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0042B5F70000000000000000000000000000000000000000000000
      000000000000C6BDB500CE9C9C00ADD6DE00A5DEE700ADC6D600CE9C9C00B594
      8C00C6BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CDE00B5D6
      E700949C9C00E7DED600F7E7D600F7E7D600F7E7D600CEC6BD00849CA5008CCE
      E700299CDE0000000000000000000000000000000000000000009CDEF70073E7
      FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7
      FF0042B5F7000000000000000000000000000000000000000000000000000000
      00000000000000000000C6BDB500D6ADAD00D6ADAD00D6B5B500C6BDB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE009C948C009C948C009C948C009C948C009C948C00299CDE00299C
      DE00000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7E7CE008C5A5A00000000000000000000000000000000000000
      000000000000AD3900008C290000000000000000000000000000A54200008C29
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6A500EFCE9C00EFCE9C00EFCE
      9400EFCE9400EFCE9C00B5848400000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000000000000000000000000000000000000000
      000000000000B58C8C00F7EFDE00F7DECE00F7DEC600F7DEC600F7DEC600F7DE
      C600EFDECE00EFDECE008C5A5A00000000000000000000000000000000000000
      0000C65A0000A5420000A54200008C29000000000000A5420000AD390000AD39
      00008C2900000000000000000000000000000000000000000000C6ADA500FFEF
      E700F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B5848400000000000000000029ADD6009CFFFF006BE7
      FF006BE7FF006BE7FF006BE7FF006BE7FF006BE7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0029ADD60000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A00000000000000000000000000000000000000
      0000AD39000000000000000000008C29000000000000AD390000000000000000
      00008C2900000000000000000000000000000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEB500F7D6B500F7D6AD00EFCE
      9C00EFCE9C00EFCE9400B5848400000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7FF006BE7FF005ADEFF005ADE
      FF005ADEFF0029ADD600000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7E7CE00EFDECE009C6B6300000000000000000000000000000000000000
      0000AD3900008C290000000000008C29000000000000AD39000000000000C65A
      00008C2900000000000000000000000000000000000000000000CEB5AD00FFFF
      F700FFEFE700F7E7D600F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6
      AD00EFCE9C00EFCE9C00B5848400000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7FF006BE7FF005ADE
      FF005ADEFF0029ADD600000000000000000000000000B58C8C00FFF7E700F7EF
      DE00F7EFDE00B58C8C00FFF7EF00F7E7CE00F7DEC600F7DEC600F7DEC600F7DE
      C600F7E7D600EFDECE009C6B6B00000000000000000000000000000000000000
      0000C65A0000AD390000AD390000AD390000A5948400AD390000AD390000AD39
      00008C2900000000000000000000000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF00FFEFE700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEBD00F7D6
      AD00F7D6A500F7D6A500B5848400000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7FF006BE7
      FF005ADEFF0029ADD600000000000000000000000000B58C8C00F7EFDE00F7DE
      CE00F7DEC600B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFE7D600A57B7300000000000000000000000000000000000000
      000000000000C65A0000A54200009C4A18008C634A00AD390000A54200008C29
      0000000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEC600F7DE
      BD00F7D6B500F7D6AD00B5848400000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7
      FF006BE7FF0029ADD600000000000000000000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFF700FFE7D600FFE7D600F7E7D600F7E7CE00FFE7
      D600FFF7E700EFDEDE00A57B7300000000000000000000000000000000000000
      00000000000000000000000000008C736B00E7DED60063524200000000000000
      0000000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFEFE700F7E7D600F7E7CE00F7DEC600F7DE
      BD00F7DEB500F7DEB500B5848400000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7
      FF006BE7FF0029ADD600000000000000000000000000B58C8C00FFF7EF00F7DE
      C600F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700EFDE
      DE00D6C6C600BDADAD00B5847300000000000000000000000000000000000000
      000000000000000000008C736B00E7DED6009C847B00D6CEBD00635242000000
      0000000000000000000000000000000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D600F7E7CE00F7DE
      C600F7DEC600F7D6B500B5848400000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF0084EFFF0084EFFF0084EF
      FF006BE7FF0029ADD600000000000000000000000000B58C8C00FFF7EF00F7E7
      CE00F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700B58C
      8C00B58C8C00B58C8C00B58C8C00000000000000000000000000000000000000
      000000000000000000009C847B00E7DED60063524200D6CEBD008C736B000000
      0000000000000000000000000000000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFEFDE00FFEF
      D600E7DEC600C6BDAD00B5848400000000000000000029ADD6009CFFFF009CFF
      FF0094F7FF0084EFFF0084EFFF0029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000088C100000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B0000000000000000000000000000000000000000000000
      0000000000008C736B00E7DED60063524200000000007B7B7300D6CEBD006352
      4200000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00F7E7D600C6A5
      9400B5948C00B58C8400B584840000000000000000000000000029ADD6009CFF
      FF0084EFFF0084EFFF0029ADD600000000000000000000000000000000000000
      0000000000000000000000000000088C100000000000B58C8C00FFFFF700FFE7
      D600FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD8484000000000000000000000000000000000000000000000000000000
      0000000000009C847B009C847B000000000000000000000000007B7B73008C73
      6B00000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE00BD8C
      7300EFB57300EFA54A00C6846B0000000000000000000000000052CEEF0029AD
      D60029ADD60029ADD60052CEEF00000000000000000000000000000000000000
      000018AD290000000000088C10000073080000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700EFDEDE00D6C6C600BDADAD00B58473000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C736B00E7DED600635242000000000000000000000000007B7B7300D6CE
      BD00635242000000000000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C694
      7B00FFC67300CE94730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000088C100018AD2900088C10000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B73006352420000000000000000000000000000000000000000007B7B
      73008C736B000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000088C10005AE78C0018AD29000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000635242000000000000000000000000000000000000000000000000000000
      00007B7B73000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000730800007308000073080018AD290000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000700000000100010000000000800300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C007C00300010001C007CBF300000000
      C007C5F300000000C007CAF300000000C007CCF300000000C007CCF300000000
      C007CCF300000000C007CCF300000000C007CCF300000000C007CC7300000000
      C007CCF300000000C007CCF300000000C007C8F300000000C007C0F300000000
      C007C00300000000C007C00700000000FDC7C001FFFF8381F003C0018FFF839D
      C001C001807F83BD0001C001800F838D0001C001800783AD0001C001800783AD
      0001C001800383AD8001C001800383ADC003C001800183ADE007C001800183AD
      F00FC001800183ADF03FC001800383ADF03FC0018007838DF03FC003C3C7838D
      E03FC007FE0F8381E07FC00FFFFF8383F0FFFFFFFFFFC001E00FF3FFF0FFC001
      C003F1FF8003C0018001F0FF8003C0010001F00F8003C0010001C0038003C001
      000180018003C001000100008003C001000100008003C001000100008003C001
      800300008003C001C00700008003C001E00F80018003C001F01FC003C003C003
      F99FF00FF0FFC007FF9FFFFFFFFFC00FFFFFFFFFC001FF8F801FFFFF8000FF87
      001FFFFF8000FFC30007807F8000FFE10007803F800080310001801F80008030
      0001800F800080780001C007800081F80001E003800080F80001F00180008878
      0001F80180008C000001FC0180008E01C001FE0180009F03C001FF018000FFFF
      F001FFFF8000FFFFF001FFFFC001FFFFFFEF803FF1FFE001FFCF8003E1FFC001
      FF8F8000C3FF8001C007800087FF8001800380008C018001800380001C018001
      800380001E018001800380001F818001800380001F018001800380001E118003
      80038000003180038003C000807180038003E001C0F980038003F003FFFF8003
      8003F807FFFFC007C007FC1FFFFFE00FC001FFFFF801FFFFC001FFFFF801F9CF
      C0018003F801F087C0018003F801F6B7C00180038001F2A7C00180038001F007
      C00180038001F80FC00180038001FE3FC00180038001FC1FC00180038001FC1F
      C00180028003F88FC001C1FE8007F9CFC001C1F4801FF1C7C003FFF1801FF3E7
      C007FFF1803FF7F7C00FFFF0807FFFFF00000000000000000000000000000000
      000000000000}
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\ddm.ini'
    SaveKey = 'main_f'
    Version = '1.4.1.3'
    Left = 424
    Top = 224
  end
end
