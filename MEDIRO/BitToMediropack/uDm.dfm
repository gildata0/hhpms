object DM_f: TDM_f
  OldCreateOrder = False
  Height = 290
  Width = 342
  object UniConnectionBIT: TUniConnection
    PoolingOptions.Validate = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object sqlTemp: TUniQuery
    Connection = UniConnectionBIT
    Left = 135
    Top = 38
  end
  object sqlWork: TUniQuery
    Connection = UniConnection1
    Left = 135
    Top = 182
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 56
    Top = 88
  end
  object UniConnection1: TUniConnection
    Left = 64
    Top = 184
  end
  object UniQuery1: TUniQuery
    Connection = UniConnectionBIT
    Left = 199
    Top = 38
  end
end
