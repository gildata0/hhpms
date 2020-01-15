object dmTcpCs_f: TdmTcpCs_f
  OldCreateOrder = False
  Height = 297
  Width = 429
  object IdTCPServer1: TIdTCPServer
    Bindings = <>
    DefaultPort = 18081
    OnExecute = IdTCPServer1Execute
    Left = 39
    Top = 70
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 39
    Top = 8
  end
end
