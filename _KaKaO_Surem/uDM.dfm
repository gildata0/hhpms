object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 333
  Width = 403
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://rest.surem.com/alimtalk/v2/json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 80
    Top = 72
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 80
    Top = 136
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 80
    Top = 200
  end
end
