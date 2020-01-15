unit uDentwebSave;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type

//      TGetPatientInfo = procedure(szCode :Pchar; szBuf:Pchar;nBufLen:integer); cdecl;
        TGetPatientInfo = procedure( szBuf:Pchar;nBufLen:integer); cdecl;
    function  callDentwebPatInfo(varChart:string):string;

implementation


function  callDentwebPatInfo(varChart:string):string;
const
       FS = #28;
       STX = #2;
       ETX = #3;
       CR = #13;
var
       in_data: string;

       GetPatientInfo: TGetPatientInfo;

       SendStr: array[0..1024] of char;
       RecvStr: array[0..1024] of char;
       RecvLen: Integer;
       lRet: Integer;
       hHwnd: THandle;

       recvData:string;

begin
    result:='';
    hHwnd := LoadLibrary('C:\Program Files\DentWeb\DentWebInfo.dll');
   // hHwnd :=             LoadLibrary('\\psf\Home\Desktop\DentWeb_Dll\DentWebInfo.dll');
    if hHwnd <= 32 then
    begin
           ShowMessage('DentWebInfo.dll Not Found!');
           Exit;
    end;
 // GetPatientInfo(szCode :Pchar; szBuf:Pchar;nBufLen:integer); cdecl; external 'DentWebInfo.dll';
//   showmessage('1');
   GetPatientInfo := GetProcAddress(hHwnd,
                                  'GetPatientInfo');
//   showmessage('2');
    in_data := varChart;//// STX + edit1.text + ETX;
   StrCopy(SendStr,  pChar(in_data));


//   showmessage('3');

 //  GetPatientInfo('cd#1245a', SendStr,1024);
  GetPatientInfo( SendStr,1024);
//    showmessage(SendStr);

    result:=  SendStr;
  //  memo1.Lines.Add(SendStr);

//   showmessage(result);

   FreeLibrary(hHwnd);


end;
end.
