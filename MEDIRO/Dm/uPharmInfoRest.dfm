object dmPharmInfoRest_f: TdmPharmInfoRest_f
  OldCreateOrder = False
  Height = 352
  Width = 660
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 88
    Top = 160
  end
  object FDMemTable1: TFDMemTable
    AutoCalcFields = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 232
    Top = 160
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://apis.data.go.kr/B551182/dgamtCrtrInfoService'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 88
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Name = 'ServiceKey'
        Options = [poDoNotEncode]
        Value = 
          '7BQrtAMsjWPll1N7ncrG4VMjqsXAiryruQmqTHrb2BcVc%2BDHeWEYBCns7kUEwy' +
          'KFS69Y2pUr9Ydj4JT8ABTw%2BA%3D%3D'
      end
      item
        Name = 'mdsCd'
        Options = [poDoNotEncode]
      end
      item
        Name = 'itmNm'
        Options = [poDoNotEncode]
        Value = #50500#49828#54588#47536
      end
      item
        Name = 'mnfEntpNm'
        Options = [poDoNotEncode]
      end
      item
        Name = 'numOfRows'
        Options = [poDoNotEncode]
        Value = '10'
      end
      item
        Name = 'pageNo'
        Options = [poDoNotEncode]
        Value = '9'
      end>
    Resource = 'getDgamtList'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 216
    Top = 16
  end
  object RESTResponse1: TRESTResponse
    RootElement = 'response.body.items.item'
    Left = 88
    Top = 80
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://apis.data.go.kr/B551182/mcatInfoService'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 448
    Top = 16
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <
      item
        Name = 'ServiceKey'
        Options = [poDoNotEncode]
        Value = 
          '7BQrtAMsjWPll1N7ncrG4VMjqsXAiryruQmqTHrb2BcVc%2BDHeWEYBCns7kUEwy' +
          'KFS69Y2pUr9Ydj4JT8ABTw%2BA%3D%3D'
      end
      item
        Name = 'numOfRows'
        Options = [poDoNotEncode]
        Value = '10'
      end
      item
        Name = 'pageNo'
        Options = [poDoNotEncode]
        Value = '1'
      end
      item
        Name = 'mcatCd'
        Options = [poDoNotEncode]
        Value = 'J4092116'
      end
      item
        Name = 'itmNm'
        Options = [poDoNotEncode]
      end
      item
        Name = 'mnfEntpNm'
        Options = [poDoNotEncode]
      end
      item
        Name = 'impEntpNm'
        Options = [poDoNotEncode]
      end>
    Resource = 'getPaymentNonPaymentList'
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 448
    Top = 88
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'response.body.items.item'
    Left = 440
    Top = 144
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse2
    Left = 440
    Top = 200
  end
  object FDMemTable2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 440
    Top = 256
  end
end
