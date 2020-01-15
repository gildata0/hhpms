object dm_f: Tdm_f
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 301
  Width = 392
  object ZConnection: TUniConnection
    ProviderName = 'SQL Server'
    Port = 15902
    Database = 'ddm'
    SpecificOptions.Strings = (
      'SQL Server.Language=Korean')
    Username = 'healthhub'
    Server = 'pms.cjedioeqnhkl.ap-northeast-2.rds.amazonaws.com'
    Connected = True
    LoginPrompt = False
    Left = 20
    Top = 15
    EncryptedPassword = '97FF9AFF9EFF93FF8BFF97FF97FF8AFF9DFFCEFFCCFFCDFFCBFF'
  end
  object SqlWork: TUniQuery
    Connection = ZConnection
    Left = 174
    Top = 10
  end
  object sqlSel: TUniQuery
    Connection = ZConnection
    Left = 218
    Top = 10
  end
  object sqlTemp: TUniQuery
    Connection = ZConnection
    Left = 262
    Top = 10
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 70
    Top = 15
  end
end
