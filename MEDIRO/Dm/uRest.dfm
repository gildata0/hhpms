object dmRest_f: TdmRest_f
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 276
  Width = 326
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://openapi.naver.com/v1/krdict/romanization'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 56
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'X-Naver-Client-Id'
        Value = 'NupjfP8tTYt0sx6H0rMf'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'X-Naver-Client-Secret'
        Value = 'Ku5My1YAFJ'
      end
      item
        Name = 'query'
        Value = #48149#49440#50689
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 56
    Top = 64
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 48
    Top = 128
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <
      item
        Name = 'sFirstName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aItems'
        DataType = ftString
        Size = 2000
      end>
    ResponseJSON = RESTResponse1
    RootElement = 'aResult'
    Left = 176
    Top = 32
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'sFirstName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aItems'
        DataType = ftString
        Size = 2000
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
    Left = 56
    Top = 200
  end
end
