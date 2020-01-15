object dm_f: Tdm_f
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 406
  Width = 477
  object UniConnection1: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'dentro'
    Username = 'sa'
    Server = 'HAPCD6A6'
    Left = 32
    Top = 48
    EncryptedPassword = 'CDFFCFFFCFFFCDFF'
  end
  object sqlWork: TUniQuery
    Connection = UniConnection1
    Left = 104
    Top = 72
  end
  object sqlTemp: TUniQuery
    Connection = UniConnection1
    Left = 96
    Top = 128
  end
  object UniQuery3: TUniQuery
    Connection = UniConnection1
    Left = 88
    Top = 184
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 208
    Top = 64
  end
  object memTblUserInfo: TFDMemTable
    FieldDefs = <
      item
        Name = 'c_date'
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 213
    Top = 159
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 432
    Top = 72
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 312
    Top = 72
  end
end
