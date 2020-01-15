object dm_f: Tdm_f
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 406
  Width = 450
  object ADOConnection1: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 22
    Top = 77
  end
  object sqlPat: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 103
    Top = 72
  end
  object ADOConnection2: TADOConnection
    Left = 25
    Top = 145
  end
  object sqlImg: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 105
    Top = 145
  end
  object ZConnection1: TUniConnection
    LoginPrompt = False
    Left = 20
    Top = 10
  end
  object sqlWork: TUniQuery
    Connection = ZConnection1
    Left = 85
    Top = 15
  end
  object sqlTemp: TUniQuery
    Connection = ZConnection1
    Left = 130
    Top = 15
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 175
    Top = 95
  end
end
