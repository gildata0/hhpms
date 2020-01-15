object DM_f: TDM_f
  OldCreateOrder = False
  Height = 290
  Width = 507
  object UniConnectionBIT: TUniConnection
    PoolingOptions.Validate = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object sqlTemp: TUniQuery
    Connection = UniConnection1
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
  object sqlCalc: TUniQuery
    Connection = UniConnection1
    Left = 191
    Top = 190
  end
  object sqlRegi: TUniQuery
    Connection = UniConnection1
    Left = 199
    Top = 198
  end
  object sqltemp12: TUniQuery
    Connection = UniConnection1
    Left = 207
    Top = 206
  end
  object sqlTemp2: TUniQuery
    Connection = UniConnection1
    Left = 215
    Top = 214
  end
  object sqlAnother3: TUniQuery
    Connection = UniConnection1
    Left = 223
    Top = 222
  end
  object sqlBit: TUniQuery
    Connection = UniConnectionBIT
    Left = 135
    Top = 94
  end
  object connectionEwha: TUniConnection
    Left = 200
    Top = 104
  end
  object sqlFind: TUniQuery
    Connection = UniConnection1
    Left = 143
    Top = 190
  end
  object sqlTemp14: TUniQuery
    Connection = UniConnection1
    Left = 151
    Top = 198
  end
  object sqltemp15: TUniQuery
    Connection = UniConnection1
    Left = 159
    Top = 206
  end
  object sqltemp13: TUniQuery
    Connection = UniConnection1
    Left = 167
    Top = 214
  end
  object sqlfindHwanja: TUniQuery
    Connection = UniConnection1
    Left = 175
    Top = 222
  end
  object sqlJinryo: TUniQuery
    Connection = UniConnection1
    Left = 248
    Top = 176
  end
  object ADOConnection1: TADOConnection
    Left = 328
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 392
    Top = 40
  end
  object sqltimer2: TUniQuery
    Connection = UniConnectionBIT
    Left = 367
    Top = 134
  end
end
