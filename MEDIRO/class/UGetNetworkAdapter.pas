unit UGetNetworkAdapter;

interface
uses Winsock, windows;

Type
  TInterFaceState=(isLoopback, isNetwork);

  TAdapterInfo=record
     Ip:string;
     SubnetMask:string;
     Broadcast:string;
     InterfaceUp:boolean;
     BroadcastSupported:boolean;
     InterfaceState:TInterFaceState;
  end;

  TNetworkAdapterInfo=class(Tobject)
  private
    FCnt:Integer;
    Fbe:array of TAdapterInfo;
    procedure EnumInterfaces;
    function GetItem(idx:integer):TAdapterInfo;
  public
    property Item[idx:integer]:TAdapterInfo Read GetItem;
    constructor Create;
    destructor Destroy;override;
  published
    property Cnt:integer Read Fcnt;
  end;

  function WSAIoctl(s: TSocket; cmd: DWORD; lpInBuffer: PCHAR; dwInBufferLen:
    DWORD; lpOutBuffer: PCHAR; dwOutBufferLen: DWORD; lpdwOutBytesReturned: LPDWORD;
    lpOverLapped: POINTER; lpOverLappedRoutine: POINTER): Integer; stdcall; external 'WS2_32.DLL';

implementation

const
    SIO_GET_INTERFACE_LIST = $4004747F;
    IFF_UP = $00000001;
    IFF_BROADCAST = $00000002;
    IFF_LOOPBACK = $00000004;
    IFF_POINTTOPOINT = $00000008;
    IFF_MULTICAST = $00000010;

type
   sockaddr_gen = packed record
      AddressIn: sockaddr_in;
      filler: packed array[0..7] of char;
   end;

   INTERFACE_INFO = packed record
     iiFlags: u_long; // Interface flags
     iiAddress: sockaddr_gen; // Interface address
     iiBroadcastAddress: sockaddr_gen; // Broadcast address
     iiNetmask: sockaddr_gen; // Network mask
   end;

{ TNetworkAdapterInfo }

constructor TNetworkAdapterInfo.Create;
begin
   inherited;
   EnumInterfaces;
end;

destructor TNetworkAdapterInfo.Destroy;
begin
  SetLength(Fbe,0);
  inherited;
end;

procedure TNetworkAdapterInfo.EnumInterfaces;
var
    s: TSocket;
    wsaD: WSADATA;
    BytesReturned, SetFlags: u_long;
    pAddrInet: SOCKADDR_IN;
    PtrA: pointer;
    Buffer: array[0..20] of INTERFACE_INFO;
    i: Integer;
begin
    Fcnt:=0;

    WSAStartup($0101, wsaD); // Start WinSock
    // You should normally check
    // for errors here :)

    s := Socket(AF_INET, SOCK_STREAM, 0); // Open a socket
    if (s = INVALID_SOCKET) then exit;

    try // Call WSAIoCtl
      PtrA := @bytesReturned;
      if (WSAIoCtl(s, SIO_GET_INTERFACE_LIST, nil, 0, @Buffer, 1024, PtrA, nil,nil)  <> SOCKET_ERROR)  then
      begin // If ok, find out how
           // many interfaces exist
         Fcnt := BytesReturned div SizeOf(INTERFACE_INFO);
         for i := 0 to Fcnt - 1 do // For every interface
         begin
            SetLength(Fbe,i+1);
            pAddrInet := Buffer[i].iiAddress.addressIn; // IP ADDRESS
            Fbe[i].Ip:=inet_ntoa(pAddrInet.sin_addr);
            pAddrInet := Buffer[i].iiNetMask.addressIn; // SUBNET MASK
            Fbe[i].SubnetMask:=inet_ntoa(pAddrInet.sin_addr);
            pAddrInet := Buffer[i].iiBroadCastAddress.addressIn; // Broadcast addr
            Fbe[i].Broadcast:=inet_ntoa(pAddrInet.sin_addr);
            SetFlags := Buffer[i].iiFlags;
            Fbe[i].InterfaceUp:=( (SetFlags and IFF_UP) = IFF_UP );
            Fbe[i].BroadcastSupported:=( (SetFlags and IFF_BROADCAST) = IFF_BROADCAST);
            if (SetFlags and IFF_LOOPBACK) = IFF_LOOPBACK then // Loopback or
                Fbe[i].InterfaceState:=isLoopback
            else
                Fbe[i].InterfaceState:=isNetwork;
         end;
      end;
    except
    end;
    //
    // Close sockets
    //
    CloseSocket(s);
    WSACleanUp;
end;

function TNetworkAdapterInfo.GetItem(idx: integer): TAdapterInfo;
begin
   If (idx<0) or (idx>Fcnt-1) then Exit;
   Result:=Fbe[idx];
end;

end.
