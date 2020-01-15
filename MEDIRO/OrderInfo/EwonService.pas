// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://interface.eonelab.co.kr/webservices/interface_webservice/service1.asmx?WSDL
//  >Import : http://interface.eonelab.co.kr/webservices/interface_webservice/service1.asmx?WSDL>0
// Encoding : utf-8
// Version  : 1.0
// (2018-09-12 9:19:32 AM - - $Rev: 86412 $)
// ************************************************************************ //

unit EwonService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : Service1Soap
  // service   : Service1
  // port      : Service1Soap
  // URL       : http://interface.eonelab.co.kr/webservices/interface_webservice/service1.asmx
  // ************************************************************************ //
  Service1Soap = interface(IInvokable)
  ['{CFE467D4-A39E-2BD2-5836-7685A9E27F8D}']
    function  Set_Order(const XML: string): string; stdcall;
    function  get_Result(const hosp_cd: string; const startDate: string; const endDate: string): string; stdcall;
    function  get_Result_Patient(const hosp_cd: string; const chart_no: string; const acptno: string; const sampno: string; const hosp_key: string): string; stdcall;
    function  Trans_Image_OK(const XML: string): string; stdcall;
    function  get_Base_Info(const id: string; const pw: string): string; stdcall;
    function  get_CodeMapping_List(const hosp_cd: string): string; stdcall;
    function  get_Search_List(const strFrom: string; const strTo: string; const pHOSP: string; const opt: string; const strSearch: string; const std: string
                              ): string; stdcall;
    function  get_TissOrderMatch(const hosp_cd: string; const strYmd: string; const ChartNo: string; const OrdCd: string): string; stdcall;
    function  get_TissOrderMatchSampNo(const hosp_cd: string; const strYmd: string; const ChartNo: string; const SampNo: string): string; stdcall;
  end;

function GetService1Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Service1Soap;


implementation
  uses System.SysUtils;

function GetService1Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Service1Soap;
const

  defWSDL = 'http://interface.eonelab.co.kr/webservices/interface_webservice/service1.asmx?WSDL';
  defURL  = 'http://interface.eonelab.co.kr/webservices/interface_webservice/service1.asmx';
  defSvc  = 'Service1';
  defPrt  = 'Service1Soap';

var

  RIO: THTTPRIO;

begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as Service1Soap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { Service1Soap }
  InvRegistry.RegisterInterface(TypeInfo(Service1Soap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Service1Soap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioDocument);
  { Service1Soap.Set_Order }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'Set_Order', '',
                                 '[ReturnName="Set_OrderResult"]', IS_OPTN);
  { Service1Soap.get_Result }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'get_Result', '',
                                 '[ReturnName="get_ResultResult"]', IS_OPTN);
  { Service1Soap.get_Result_Patient }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'get_Result_Patient', '',
                                 '[ReturnName="get_Result_PatientResult"]', IS_OPTN);
  { Service1Soap.Trans_Image_OK }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'Trans_Image_OK', '',
                                 '[ReturnName="Trans_Image_OKResult"]', IS_OPTN);
  { Service1Soap.get_Base_Info }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'get_Base_Info', '',
                                 '[ReturnName="get_Base_InfoResult"]', IS_OPTN);
  { Service1Soap.get_CodeMapping_List }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'get_CodeMapping_List', '',
                                 '[ReturnName="get_CodeMapping_ListResult"]', IS_OPTN);
  { Service1Soap.get_Search_List }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'get_Search_List', '',
                                 '[ReturnName="get_Search_ListResult"]', IS_OPTN);
  { Service1Soap.get_TissOrderMatch }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'get_TissOrderMatch', '',
                                 '[ReturnName="get_TissOrderMatchResult"]', IS_OPTN);
  { Service1Soap.get_TissOrderMatchSampNo }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'get_TissOrderMatchSampNo', '',
                                 '[ReturnName="get_TissOrderMatchSampNoResult"]', IS_OPTN);

end.