unit uWebgMap;

interface
uses
     Forms,
     SysUtils,
     Dialogs,
     Classes,
     Controls,
     windows,
     Registry,
       UWebGMapsCommon, UWebGMapsGeocoding, UWebGMaps, UWebGMapsMarkers, UWebGMapsClusters;

type
     TmapInfo = record
          Latitude,
          Longitude : string;
end;
     function GetMapInfo(address:string): TmapInfo;
implementation
uses
    uCOnfig;

function GetMapInfo(address:string): TmapInfo;
var
   WebGMapsGeocoding1 : TWebGMapsGeocoding;
begin
     result.Latitude:= '0';
     result.Longitude:= '0';
          try
                  if address <> '' then
                  begin
                   WebGMapsGeocoding1 := TWebGMapsGeocoding.Create(nil);
                   WebGMapsGeocoding1.APIKey := configValue.varGoogleMapApiKey ;
                   // 'AIzaSyDDXFkSwnTtomsoNXpVSKFoL1WqEcLAaQ0';

                   WebGMapsGeocoding1.Address := address;

                    if WebGMapsGeocoding1.LaunchGeocoding = erOk then
                    begin

                     result.Latitude  := floatToStr( WebGMapsGeocoding1.ResultLatitude);
                     result.Longitude := floatToStr( WebGMapsGeocoding1.ResultLongitude);
                     //   updateGogekAddress(id, Latitude, Longitude );

                    end;
                  end;
          finally
              WebGMapsGeocoding1.Free;
          end;

end;

end.

