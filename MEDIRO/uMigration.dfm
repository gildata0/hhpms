object migration_f: Tmigration_f
  Left = 0
  Top = 0
  Caption = 'migration_f'
  ClientHeight = 480
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 48
    Top = 229
    Width = 169
    Height = 28
    BorderStyle = bsNone
    ForeColor = clYellow
    Progress = 0
  end
  object edtRemain: TLabel
    Left = 166
    Top = 80
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'edtRemain'
  end
  object lblStat: TLabel
    Left = 197
    Top = 8
    Width = 376
    Height = 13
    AutoSize = False
    Caption = 'lblStat'
  end
  object btnLoad: TButton
    Left = 70
    Top = 35
    Width = 121
    Height = 25
    Caption = 'btnLoad'
    TabOrder = 0
    OnClick = btnLoadClick
  end
  object RichText1: TRichEdit
    Left = 349
    Top = 50
    Width = 284
    Height = 82
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichText1')
    ParentFont = False
    TabOrder = 1
    Zoom = 100
  end
  object edtChart: TEdit
    Left = 70
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtChart'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 252
    Width = 209
    Height = 145
    Caption = 'Bit'
    TabOrder = 3
    object Label4: TLabel
      Left = 22
      Top = 113
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Password'
    end
    object Label3: TLabel
      Left = 19
      Top = 89
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'UserName'
    end
    object Label2: TLabel
      Left = 29
      Top = 57
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'dbName'
    end
    object Label1: TLabel
      Left = 60
      Top = 22
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = 'ip'
    end
    object edtIP: TEdit
      Left = 72
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'BIT_EMR'
    end
    object edtPassword: TEdit
      Left = 72
      Top = 113
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'edtPassword'
    end
    object edtUserName: TEdit
      Left = 72
      Top = 86
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'edtUserName'
    end
    object edtDbName: TEdit
      Left = 72
      Top = 54
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'DrBITPACK'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 92
    Width = 209
    Height = 138
    Caption = 'Mediro'
    TabOrder = 4
    object Label5: TLabel
      Left = 60
      Top = 19
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = 'ip'
    end
    object Label6: TLabel
      Left = 29
      Top = 54
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'dbName'
    end
    object Label7: TLabel
      Left = 19
      Top = 86
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'UserName'
    end
    object Label8: TLabel
      Left = 22
      Top = 110
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Password'
    end
    object edtIP2: TEdit
      Left = 72
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'pms.cjedioeqnhkl.ap-northeast-2.rds.amazonaws.com,15902'
    end
    object edtDbName2: TEdit
      Left = 72
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Mediro'
    end
    object edtUserName2: TEdit
      Left = 72
      Top = 83
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'healthhub'
    end
    object edtPassword2: TEdit
      Left = 72
      Top = 110
      Width = 121
      Height = 21
      PasswordChar = '&'
      TabOrder = 3
      Text = 'healthhub1324'
    end
    object btnMediroDBConnect: TButton
      Left = 56
      Top = 0
      Width = 81
      Height = 17
      Caption = 'Connect DB'
      TabOrder = 4
      OnClick = btnMediroDBConnectClick
    end
  end
  object Memo1: TMemo
    Left = 349
    Top = 169
    Width = 284
    Height = 105
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object btnMemoSave: TButton
    Left = 349
    Top = 138
    Width = 148
    Height = 25
    Caption = 'btnMemoSave'
    TabOrder = 6
    OnClick = btnMemoSaveClick
  end
  object rgChoice: TRadioGroup
    Left = 255
    Top = 229
    Width = 42
    Height = 137
    Hint = 'A : All'#13#10'O : Jinryo_o'#13#10'S : Jinryo_s'#13#10'P : Jinryo_p'
    ItemIndex = 0
    Items.Strings = (
      'A'
      'O'
      'S'
      'P')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object cbADel: TCheckBox
    Left = 297
    Top = 250
    Width = 14
    Height = 17
    Caption = 'cbADel'
    TabOrder = 8
  end
  object cbOdel: TCheckBox
    Left = 297
    Top = 279
    Width = 14
    Height = 17
    Caption = 'cbOdel'
    TabOrder = 9
  end
  object cbSdel: TCheckBox
    Left = 297
    Top = 306
    Width = 14
    Height = 17
    Caption = 'cbSdel'
    TabOrder = 10
  end
  object cbPdel: TCheckBox
    Left = 297
    Top = 336
    Width = 14
    Height = 17
    Caption = 'cbPdel'
    TabOrder = 11
  end
  object Button1: TButton
    Left = 248
    Top = 191
    Width = 75
    Height = 24
    Caption = 'O S P'
    TabOrder = 12
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Bit CC'
    TabOrder = 13
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 129
    Width = 75
    Height = 25
    Caption = 'sRemark'
    TabOrder = 14
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Patient'
    TabOrder = 15
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 248
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Promise'
    TabOrder = 16
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 248
    Top = 372
    Width = 75
    Height = 25
    Caption = 'ALL'
    TabOrder = 17
    OnClick = Button6Click
  end
  object CheckBox1: TCheckBox
    Left = 224
    Top = 48
    Width = 18
    Height = 17
    TabOrder = 18
  end
  object CheckBox2: TCheckBox
    Left = 224
    Top = 79
    Width = 18
    Height = 17
    TabOrder = 19
  end
  object CheckBox3: TCheckBox
    Left = 224
    Top = 133
    Width = 18
    Height = 17
    TabOrder = 20
  end
  object CheckBox4: TCheckBox
    Left = 224
    Top = 160
    Width = 18
    Height = 17
    TabOrder = 21
  end
  object CheckBox5: TCheckBox
    Left = 223
    Top = 283
    Width = 18
    Height = 17
    TabOrder = 22
  end
  object CheckBox6: TCheckBox
    Left = 223
    Top = 306
    Width = 18
    Height = 17
    TabOrder = 23
  end
  object CheckBox7: TCheckBox
    Left = 223
    Top = 336
    Width = 18
    Height = 17
    TabOrder = 24
  end
  object Memo2: TMemo
    Left = 352
    Top = 296
    Width = 273
    Height = 97
    Lines.Strings = (
      'Memo2')
    TabOrder = 25
  end
  object Button7: TButton
    Left = 352
    Top = 462
    Width = 89
    Height = 25
    Caption = 'Suga Modal_Eng'
    TabOrder = 26
    OnClick = Button7Click
  end
  object Button9: TButton
    Left = 352
    Top = 399
    Width = 83
    Height = 25
    Caption = 'suga_ilbanek'
    TabOrder = 27
    OnClick = Button9Click
  end
  object Button8: TButton
    Left = 352
    Top = 431
    Width = 83
    Height = 25
    Caption = 'suga_userKey'
    TabOrder = 28
    OnClick = Button8Click
  end
  object CheckBox8: TCheckBox
    Left = 441
    Top = 434
    Width = 56
    Height = 17
    Caption = 'like c%'
    Checked = True
    State = cbChecked
    TabOrder = 29
  end
  object Button10: TButton
    Left = 8
    Top = 399
    Width = 89
    Height = 25
    Caption = 'suga_sutakComp'
    TabOrder = 30
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 8
    Top = 430
    Width = 126
    Height = 25
    Caption = 'suga'#44032#49328#53076#46300#51333#47448#50629
    TabOrder = 31
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 8
    Top = 461
    Width = 126
    Height = 25
    Caption = 'suga sutakGrade'
    TabOrder = 32
    OnClick = Button12Click
  end
  object CheckBox9: TCheckBox
    Left = 503
    Top = 434
    Width = 97
    Height = 17
    Caption = 'drug'
    TabOrder = 33
  end
  object Button13: TButton
    Left = 152
    Top = 447
    Width = 126
    Height = 25
    Caption = 'jinryo_o No Delete'
    TabOrder = 34
    OnClick = Button13Click
  end
  object Memo3: TMemo
    Left = 664
    Top = 56
    Width = 249
    Height = 321
    Lines.Strings = (
      ''
      'update jinryo_s set'
      
        'su_gu3= case when SUBSTRING(convert(varchar(6),chartid),1,3) = '#39 +
        '301'#39' then '#39'09'#39'  --'#45236#48373#50557
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,3) = '#39'3' +
        '02'#39' then '#39'10'#39'  --'#50808#50857#50557
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,1) = '#39'4' +
        #39'   then '#39'12'#39'  --'#51452#49324#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,1) = '#39'5' +
        #39'   then '#39'19'#39'  --'#47560#52712#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,1) = '#39'9' +
        #39'   then '#39'30'#39'  --'#44160#49324#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,2) = '#39'1' +
        '0'#39'   then '#39'31'#39'  --'#48169#49324#49440#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,2) = '#39'1' +
        '1'#39'   then '#39'39'#39'  --CT'#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,2) = '#39'1' +
        '2'#39'   then '#39'40'#39'  --MRI'#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,2) = '#39'1' +
        '3'#39'   then '#39'41'#39'  --PET'#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,2) = '#39'1' +
        '6'#39'   then '#39'42'#39'  --'#52488#51020#54028#47308
      
        '            when SUBSTRING(convert(varchar(6),chartid),1,2) = '#39'9' +
        '9'#39'   then '#39'50'#39'  --'#44592#53440#47308
      #9#9#9'ELSE '#39'50'#39' end'
      #9#9#9'where chartid is not null'
      ''
      ''
      'update jinryo_s set'
      
        'su_gu1=(select top 1 su_gu1 from suga where su_key= jinryo_s.su_' +
        'key)'
      ''
      'update jinryo_s set'
      
        'su_gu2=(select top 1 su_gu2 from suga where su_key= jinryo_s.su_' +
        'key)')
    ScrollBars = ssBoth
    TabOrder = 35
  end
  object Button14: TButton
    Left = 472
    Top = 399
    Width = 75
    Height = 25
    Caption = 'LabInfo'
    TabOrder = 36
    OnClick = Button14Click
  end
  object UniConnection1: TUniConnection
    Left = 424
    Top = 8
  end
  object uniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 424
    Top = 56
  end
  object UniConnection2: TUniConnection
    Left = 528
    Top = 8
  end
  object uniQuery2: TUniQuery
    Connection = UniConnection2
    Left = 536
    Top = 56
  end
  object UniQuery3: TUniQuery
    Connection = UniConnection2
    Left = 576
    Top = 56
  end
end
