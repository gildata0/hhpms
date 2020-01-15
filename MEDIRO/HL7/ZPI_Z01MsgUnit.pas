unit ZPI_Z01MsgUnit;

interface
uses
  bsHL7Object,
  ZINSegUnit,
  ZAUSegUnit,
  BSHL7DT251;

type
  TBSZPI_Z01_251 = class(TBSHL7Message)
  private
    function GetIN1: TbsIN1_251;
    function GetMSH: TbsMSH_251;
    function GetPID: TbsPID_251;
    function GetPRD: TbsPRD_251;
    function GetZAU: TbsZAU_251;
    function GetZIN: TbsZIN_251;
    procedure SetIN1(const Value: TbsIN1_251);
    procedure SetMSH(const Value: TbsMSH_251);
    procedure SetPID(const Value: TbsPID_251);
    procedure SetPRD(const Value: TbsPRD_251);
    procedure SetZAU(const Value: TbsZAU_251);
    procedure SetZIN(const Value: TbsZIN_251);
  public
   procedure Init; override;
   property MSH : TbsMSH_251 read GetMSH write SetMSH;
   property ZAU : TbsZAU_251 read GetZAU write SetZAU;
   property PRD : TbsPRD_251 read GetPRD write SetPRD;
   property PID : TbsPID_251 read GetPID write SetPID;
   property IN1 : TbsIN1_251 read GetIN1 write SetIN1;
   property ZIN : TbsZIN_251 read GetZIN write SetZIN;
  end;

implementation

{ TBSZPI_Z01_251 }

function TBSZPI_Z01_251.GetIN1: TbsIN1_251;
begin
  Result:=TbsIN1_251(GetOrCreateObject('IN1'));
end;

function TBSZPI_Z01_251.GetMSH: TbsMSH_251;
begin
  Result:=TbsMSH_251(GetOrCreateObject('MSH'));
end;

function TBSZPI_Z01_251.GetPID: TbsPID_251;
begin
  Result:=TbsPID_251(GetOrCreateObject('PID'));
end;

function TBSZPI_Z01_251.GetPRD: TbsPRD_251;
begin
  Result:=TbsPRD_251(GetOrCreateObject('PRD'));
end;

function TBSZPI_Z01_251.GetZAU: TbsZAU_251;
begin
  Result:=TbsZAU_251(GetOrCreateObject('ZAU'));
end;

function TBSZPI_Z01_251.GetZIN: TbsZIN_251;
begin
  Result:=TbsZIN_251(GetOrCreateObject('ZIN'));
end;

procedure TBSZPI_Z01_251.Init;
begin
   FTypeName:='ZPI_Z01';
   FTypeVersion:='251';
   FTypeVendor:='BESA';
   inherited;
end;

procedure TBSZPI_Z01_251.SetIN1(const Value: TbsIN1_251);
begin
   SetObject('IN1',Value);
end;

procedure TBSZPI_Z01_251.SetMSH(const Value: TbsMSH_251);
begin
   SetObject('MSH',Value);
end;

procedure TBSZPI_Z01_251.SetPID(const Value: TbsPID_251);
begin
   SetObject('PID',Value);
end;

procedure TBSZPI_Z01_251.SetPRD(const Value: TbsPRD_251);
begin
   SetObject('PRD',Value);
end;

procedure TBSZPI_Z01_251.SetZAU(const Value: TbsZAU_251);
begin
   SetObject('ZAU',Value);
end;

procedure TBSZPI_Z01_251.SetZIN(const Value: TbsZIN_251);
begin
   SetObject('ZIN',Value);
end;

procedure InitZPI_Z01Message;
var
  LDefinition : TBSHL7Definition;
begin
  LDefinition := TBSHL7Definition.Create('ZPI_Z01','2.5.1','BESA','M');
  BSHL7Library.AddType(LDefinition);
  LDefinition.Add('MSH','MSH',1,1);
  LDefinition.Add('MSA','MSA',0,1);
  LDefinition.Add('ZAU','ZAU',0,1,'BESA');
  LDefinition.Add('PRD','PRD',0,1);
  LDefinition.Add('PID','PID',0,1);
  LDefinition.Add('IN1','IN1',0,1);
  LDefinition.Add('ZIN','ZIN',0,1,'BESA');
end;

initialization
  InitZPI_Z01Message;

end.
