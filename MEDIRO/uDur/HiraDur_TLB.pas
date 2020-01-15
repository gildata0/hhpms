unit HiraDur_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 2010-10-25 오후 6:14:24 from Type Library described below.

// ************************************************************************  //
// Type Lib: c:\hira\Ihiradur\IHiraDur.exe (1)
// LIBID: {F824B81C-9C4E-475B-AE05-6B936F7AF761}
// LCID: 0
// Helpfile: 
// HelpString: IHIRADUR 1.0 형식 라이브러리
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Hint: Symbol 'Type' renamed to 'type_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  HiraDurMajorVersion = 1;
  HiraDurMinorVersion = 0;

  LIBID_HiraDur: TGUID = '{F824B81C-9C4E-475B-AE05-6B936F7AF761}';

  DIID_IHIRAClient: TGUID = '{5D976593-FD79-4E44-BD91-3D1F9CED28CE}';
  DIID_IHIRAPrescription: TGUID = '{DCAD8E6F-DC73-4F2A-8CBB-C17A90A5CCDA}';
  DIID_IHIRAResultSet: TGUID = '{E0E148AB-B5DE-466D-BA3A-01E958A32FC9}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum tagPrscType
type
  tagPrscType = TOleEnum;
const
  durPrscNone = $00000000;
  durPrscSuga = $00000001;
  durPrscYakga = $00000003;
  durPrscWonRyo = $00000005;
  durPrscJaeRyo = $00000008;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IHIRAClient = dispinterface;
  IHIRAPrescription = dispinterface;
  IHIRAResultSet = dispinterface;

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//

  PrscType = tagPrscType; 

// *********************************************************************//
// DispIntf:  IHIRAClient
// Flags:     (4224) NonExtensible Dispatchable
// GUID:      {5D976593-FD79-4E44-BD91-3D1F9CED28CE}
// *********************************************************************//
  IHIRAClient = dispinterface
    ['{5D976593-FD79-4E44-BD91-3D1F9CED28CE}']
    function SyncDB(const yKiHo: WideString): Integer; dispid 1;
    function Check(const pPrescription: IDispatch; const pResultSet: IDispatch): Integer; dispid 2;
    function Report(const pPrescription: IDispatch; const pResultSet: IDispatch): Integer; dispid 3;
    function GetUnreportedResultsCount: Integer; dispid 4;
    function SendUnreportedResults: Integer; dispid 5;
    function Cancel(const pPrescription: IDispatch; const reasonCd: WideString; 
                    const reasonText: WideString; const MakerCode: WideString): Integer; dispid 6;
    function MprscCancel(const prscMake: WideString; const patJuminNo: WideString; 
                         const prscDate: WideString; const yKiHo: WideString; 
                         const mprscGrantNo: WideString; const reasonCd: WideString; 
                         const reasonText: WideString; const MakerCode: WideString): Integer; dispid 7;
    function MprscGrantNoUpdate(const patJuminNo: WideString; const prscData: WideString; 
                                const prscIssueAdmin: WideString; const mprscGrantNo: WideString; 
                                const MprscGrantNoUpdate: WideString): Integer; dispid 8;
    function MprscInformation(const pPrescription: IDispatch; const patJuminNo: WideString; 
                              const prscDate: WideString; const prscIssueAdmin: WideString; 
                              const prscGrantNo: WideString): Integer; dispid 9;
    function GetHelpMessage(nDurCode: Integer): WideString; dispid 10;
    function Test(const pPrescription: IDispatch; const pResultSet: IDispatch): Integer; dispid 11;
    property AdminCode: WideString dispid 12;
    property LastErrorMsg: WideString readonly dispid 13;
    function ShowHelp(nDurCode: Integer): Integer; dispid 14;
  end;

// *********************************************************************//
// DispIntf:  IHIRAPrescription
// Flags:     (4224) NonExtensible Dispatchable
// GUID:      {DCAD8E6F-DC73-4F2A-8CBB-C17A90A5CCDA}
// *********************************************************************//
  IHIRAPrescription = dispinterface
    ['{DCAD8E6F-DC73-4F2A-8CBB-C17A90A5CCDA}']
    function AddMedicine(PrscType: PrscType; const medcCD: WideString; const medcNM: WideString; 
                         const GnlNMCD: WideString; const gnlNM: WideString; ddMqtyFreq: Single; 
                         ddExecFreq: Single; mdcnExecFreq: Integer; const insudmdtype: WideString; 
                         const ioHsp: WideString): Integer; dispid 1;
    function RemoveMedicine(PrscType: PrscType; const medcCD: WideString; const medcNM: WideString; 
                            const GnlNMCD: WideString; const gnlNM: WideString; ddMqtyFreq: Single; 
                            ddExecFreq: Single; mdcnExecFreq: Integer): Integer; dispid 2;
    function NextMedicine: WordBool; dispid 3;
    function ClearMedicine: Integer; dispid 4;
    procedure RewindMedicine; dispid 5;
    property CountMedicine: Integer readonly dispid 6;
    property JuminNo: WideString dispid 7;
    property PrscAdminName: WideString dispid 8;
    property MprscIssueAdmin: WideString dispid 9;
    property mprscGrantNo: WideString dispid 10;
    property MakerClCode: WideString dispid 11;
    property DrLicNo: WideString dispid 12;
    property AppIssueAdmin: WideString dispid 13;
    property AdminType: WideString dispid 14;
    property PrscPresDt: WideString dispid 15;
    property PrscPresTm: WideString dispid 16;
    property InsurerType: WideString dispid 17;
    property MakerUsage: WideString dispid 18;
    property Dsbjt: WideString dispid 19;
    property MainSick: WideString dispid 20;
    property PregWmnYN: WideString dispid 21;
    property PatNm: WideString dispid 22;
    property PatTelNo: WideString dispid 23;
    property PrscYN: WideString dispid 24;
    property PrscTypeRcp: PrscType readonly dispid 25;
    property medcCD: WideString readonly dispid 26;
    property medcNM: WideString readonly dispid 27;
    property GnlNMCD: WideString readonly dispid 28;
    property gnlNM: WideString readonly dispid 29;
    property ddMqtyFreq: Single readonly dispid 30;
    property ddExecFreq: Single readonly dispid 31;
    property mdcnExecFreq: Integer readonly dispid 32;
    property insudmdtype: WideString readonly dispid 33;
    property PrscTel: WideString dispid 34;
    property PrscFax: WideString dispid 35;
    property PrscLicType: WideString dispid 36;
    property PrscName: WideString dispid 37;
    property PrscMdFee: WideString dispid 38;
    property PrscClCode: WideString dispid 39;
    property PrscRef: WideString dispid 40;
    property PrscIjCtm: WideString dispid 41;
    property PrscPeriod: WideString dispid 42;
    property PrscUsage: WideString dispid 43;
    property MakerDate: WideString dispid 44;
    property MakerTime: WideString dispid 45;
    property MakerIssueAdmin: WideString dispid 46;
    property MakerTel: WideString dispid 47;
    property MakerLic: WideString dispid 48;
    property MakerName: WideString dispid 49;
    property MakerAdminName: WideString dispid 50;
    property ioHsp: WideString readonly dispid 51;
  end;

// *********************************************************************//
// DispIntf:  IHIRAResultSet
// Flags:     (4224) NonExtensible Dispatchable
// GUID:      {E0E148AB-B5DE-466D-BA3A-01E958A32FC9}
// *********************************************************************//
  IHIRAResultSet = dispinterface
    ['{E0E148AB-B5DE-466D-BA3A-01E958A32FC9}']
    procedure RewindResult; dispid 1;
    function NextResult: WordBool; dispid 2;
    procedure ClearResult; dispid 3;
    function AddReport(nIndex: Integer; const prscReasonCD: WideString; const prscReason: WideString): Integer; dispid 4;
    function RemoveReport(nIndex: Integer): Integer; dispid 5;
    function ClearReport: Integer; dispid 6;
    property Index: Integer readonly dispid 7;
    property Totalcnt: Integer readonly dispid 8;
    property Checkcnt: Integer readonly dispid 9;
    property Reportcnt: Integer readonly dispid 10;
    property ErrorCode: Integer readonly dispid 11;
    property Medicnt: Integer readonly dispid 12;
    property AgeLimit: WideString readonly dispid 13;
    property SafeType: WideString readonly dispid 14;
    property MaxDoseQuantity: Double readonly dispid 15;
    property MaxDoseTerm: Integer readonly dispid 16;
    property HighQuantityMedcCD: WideString readonly dispid 17;
    property Message: WideString readonly dispid 18;
    property PrscTypeA: PrscType readonly dispid 19;
    property PrscTypeB: PrscType readonly dispid 20;
    property MedcCDA: WideString readonly dispid 21;
    property MedcCDB: WideString readonly dispid 22;
    property GnlNMCDA: WideString readonly dispid 23;
    property GnlNMCDB: WideString readonly dispid 24;
    property DDMqtyFreqA: Single readonly dispid 25;
    property DDMqtyFreqB: Single readonly dispid 26;
    property DDExecFreqA: Single readonly dispid 27;
    property DDExecFreqB: Single readonly dispid 28;
    property MdcnExecFreqA: Integer readonly dispid 29;
    property MdcnExecFreqB: Integer readonly dispid 30;
    property Level: Integer readonly dispid 31;
    property Notice: WideString readonly dispid 32;
    property ExeDate: WideString dispid 33;
    property type_: Integer readonly dispid 34;
    property reasonCd: WideString readonly dispid 35;
    property Reason: WideString readonly dispid 36;
    property MedcNMA: WideString readonly dispid 37;
    property MedcNMB: WideString readonly dispid 38;
    property PrscEndMsg: WideString readonly dispid 39;
    property RMK: WideString readonly dispid 40;
    property DDTotalMqtyB: Single readonly dispid 41;
    property GnlNMA: WideString readonly dispid 42;
    property GnlNMB: WideString readonly dispid 43;
    property UseTogether: Integer readonly dispid 44;
    property AgeLimitVal: Integer readonly dispid 45;
    property AgeLimitUnit: Integer readonly dispid 46;
    property PregnantExamType: WideString readonly dispid 47;
    property PregnantContradGrade: WideString readonly dispid 48;
    property MedcInfType: WideString readonly dispid 49;
    property Informationcnt: Integer readonly dispid 50;
    property Warningcnt: Integer readonly dispid 51;
    property Forbiddencnt: Integer readonly dispid 52;
    property Resultcnt: Integer readonly dispid 53;
    property Selectcnt: Integer readonly dispid 54;
    property PregnantLevelChangeWarning: Integer readonly dispid 55;
    property PregnantLevelChangeInformation: Integer readonly dispid 56;
    property ExamTypeCD: WideString readonly dispid 57;
    property DpPrscMake: WideString readonly dispid 58;
    property DpPrscYYMMDD: WideString readonly dispid 59;
    property DpPrscHMMSS: WideString readonly dispid 60;
    property DpPrscAdminCode: WideString readonly dispid 61;
    property DpPrscGrantNo: WideString readonly dispid 62;
    property DpPrscAdminName: WideString readonly dispid 63;
    property DpPrscTel: WideString readonly dispid 64;
    property DpPrscFax: WideString readonly dispid 65;
    property DpPrscName: WideString readonly dispid 66;
    property DpPrscLic: WideString readonly dispid 67;
    property DpMakeYYMMDD: WideString readonly dispid 68;
    property DpMakeHMMSS: WideString readonly dispid 69;
    property DpMakeAdminCode: WideString readonly dispid 70;
    property DpMakeAdminName: WideString readonly dispid 71;
    property DpMakeTel: WideString readonly dispid 72;
    property DpMakeName: WideString readonly dispid 73;
    property DpMakeLic: WideString readonly dispid 74;
  end;

implementation

uses ComObj;

end.
