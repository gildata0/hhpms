unit uRest;

interface

uses
  Windows, System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Data.DB, Datasnap.DBClient,
  REST.Response.Adapter, Midaslib, FireDAC.Stan.StorageJSON,
  JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Types;

type
  TdmRest_f = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure  Search(AKeyword: string);
     function  MyData: TJSONArray;
  end;

var
  dmRest_f: TdmRest_f;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TdmRest_f.Search(AKeyword: string);
begin

    RESTRequest1.Params.ParameterByName('query').Value := AKeyword;
    RESTRequest1.Execute;

end;
//
procedure TdmRest_f.DataModuleCreate(Sender: TObject);
//var
// hHwnd : Thandle;
begin
// hHwnd := LoadLibrary('webservice.dll');
end;

function TdmRest_f.MyData: TJSONArray;
var
 jRecord,jRecord2: TJSONObject;
 I: Integer;
begin
//    FDMemTable1.Open;
//    Result := TJSonArray.Create;
//    while not FDMemTable1.EOF do
//      begin
//         jRecord := TJSONObject.Create;
//         for I := 0 to FDMemTable1.FieldCount - 1 do
//           jRecord.AddPair( FDMemTable1.Fields[I].FieldName,
//                                 TJSONString.Create (FDMemTable1.Fields[I].AsString));
//           Result.AddElement(jRecord);
//           FDMemTable1.Next;
//      end;
   end;
end.
