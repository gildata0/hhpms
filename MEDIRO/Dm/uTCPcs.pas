unit uTCPcs;

interface

uses
  System.SysUtils, System.Classes, IdContext, IdTCPConnection, IdTCPClient,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdTCPServer, IdGlobal;

type
  TdmTcpCs_f = class(TDataModule)
    IdTCPServer1: TIdTCPServer;
    IdTCPClient1: TIdTCPClient;
    procedure IdTCPServer1Execute(AContext: TIdContext);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTcpCs_f: TdmTcpCs_f;

implementation
uses uConfig, uGogekData,
    uHLClass,
    bsHL7Object, ZPI_Z01MsgUnit, bsUtils, BSHL7251, BSHL7Grp251, BSHL7DT251;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmTcpCs_f.IdTCPServer1Execute(AContext: TIdContext);
var
  Bloques: integer;
  i: integer;
  TamanoBloque: integer;
  trozoTexto: ansistring;
  texto: ansistring;
  ack: TBsACK_251;
  Msg, sCommand, sAction:ansiString;

   parseValue :  TParseValue;
   MessageCode ,
   TriggerEvent ,
   MessageStructure,
   MessageControlID : string;
   OMG_result : TParseValue_OMG;
begin


    Msg :=  uppercase( AContext.Connection.IOHandler.ReadLn(END_BLOCK, enUtf8) );

//    memo2.lines.add(Msg);

    parseValue := Parse_ReadHeader(Msg)  ;

    MessageCode         :=  parseValue.MessageCode;      //OMG
    TriggerEvent        :=  parseValue.TriggerEvent;     //O19
    MessageStructure    :=  parseValue.MessageStructure; //OMG_O19
    MessageControlID    :=  parseValue.MessageControlID;


    if MessageStructure = 'OMG_O19' then
    begin

       OMG_result:=  Parse_OMG_019(Msg) ;
//       memo1.lines.add(  'patID ==> '+ OMG_result.patID);
//       memo1.lines.add(  'modality ==> '+OMG_result.modality);
//       memo1.lines.add(  'patStatus ==> '+OMG_result.patStatus);
    end;


  // Send
  ack := TbsACK_251.Create;
  try

     ack.MSH.MessageType.AsString :=   MessageCode
                                +'^'+  TriggerEvent
                                +'^'+  MessageStructure;

     ack.MSH.MessageControlID.Value   :='1234567890';
     ack.MSA.AcknowledgmentCode.Value :='AA' ;
     ack.MSA.MessageControlID.Value   :=MessageControlID ;
     texto := ack.AsHL7;

//     memo1.lines.add(texto);

//      MSH|^~\&|||HRIS||20180808214118.298+0900||ACK^O19^ACK|5602|P|2.5.1
//      MSA|AA|5601


//      MSH|^~\&|||||20180808214417||^ACK|1234567890|P|2.5.1
//      MSA|AA
        //necessary property ==>  HRIS  , ACK^O19^ACK , 5601

//MSH|^~\&|HRIS||||20180808214048.421+0900||OMG^O19^OMG_O19|5601|P|2.5.1|20180808214048426
//PID||111111|||PATIENT^NAME|MOTHER^NAME|20100101000000+0900|M|||&   ADDRESS  |KOR|111-1111-1111||||||99999999||||BIRTH PLACE||1//PV1||O|^   ASSIGNED PATIENT LOCATION ASSIGNED PATIENT LOCATION|R||^   PRIOR PATIENT LOCATION PRIOR PATIENT LOCATION|^()^DR.AAA|^^() DR BBB|^^() DR CCC|MED||||2|A0||^^() DR DDD||VN001//ORC||PROC_001|||A||||||||||20180626000000+0900//OBR||||||||||||||||||||||||||||||||||||||||||||PROC_001



     AContext.Connection.IOHandler.Write(START_BLOCK  + texto + END_BLOCK, enUTF8);

  finally
    freeandnil(ack);
  end;

end;
end.
