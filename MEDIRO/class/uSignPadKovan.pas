unit uSignPadKovan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, StdCtrls, ComCtrls, OleServer;
type
//     TElectSignInfo = record
//          ElectsignedData : widestring;
//          PKCS7SignedData: widestring;
//
//     end;


  Tgeneral_pin      = function (stSign : PChar; SignPath : Integer; vanid : integer): Integer; stdcall;
  Tgeneral_sign     = function (stSign : PChar; Portnum : Integer; vanid : Integer): Integer; stdcall;
  TKovan_Ack        = function (): Integer; stdcall;
  TKovan_Send       = function (AuthIP : PChar; AuthPort : Integer; SendData : PChar; RecvData :  PChar): Integer; stdcall;
  TKovan_SendSign   = function (AuthIP : PChar; AuthPort : Integer; SendData : PChar; signLen : Integer; signdata : PChar; RecvData :  PChar): Integer; stdcall;
  TKovan_OKCashbag  = function (AuthIP : PChar; AuthPort : Integer; SendData : PChar; RecvData :  PChar): Integer; stdcall;

var
  general_pin : Tgeneral_pin;
  general_sign : Tgeneral_sign;
  Kovan_Send : TKovan_Send;
  Kovan_Ack : TKovan_Ack;
  Kovan_SendSign : TKovan_SendSign;
  DLLHandle : Integer;


implementation


end.
