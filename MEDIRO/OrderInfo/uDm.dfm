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
    Left = 280
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
  object sqlTimer: TUniQuery
    Connection = UniConnection1
    Left = 248
    Top = 24
  end
  object sqlTimer2: TUniQuery
    Connection = UniConnection1
    Left = 272
    Top = 56
  end
end
