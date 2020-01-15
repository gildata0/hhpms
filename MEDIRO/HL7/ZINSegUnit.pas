unit ZINSegUnit;

interface
uses
  bsHL7Object,BSHL7DT251;

type
  TbsZIN_251 = class(TBSHL7Segment)
  private
    function Getcondition: TbsST_251;
    function Getifcondition: TbsST_251;
    procedure Setcondition(const Value: TbsST_251);
    procedure Setifcondition(const Value: TbsST_251);
  public
    property ifcondition : TbsST_251 read Getifcondition write Setifcondition;
    property condition : TbsST_251 read Getcondition write Setcondition;
    procedure Init;override;
  end;


implementation

{ TbsZIN_251 }

function TbsZIN_251.Getcondition: TbsST_251;
begin
   Result:= TbsST_251(GetOrCreateObject('CONDITION'));
end;

function TbsZIN_251.Getifcondition: TbsST_251;
begin
   Result:= TbsST_251(GetOrCreateObject('IFCONDITION'));
end;

procedure TbsZIN_251.Init;
begin
  SetType('ZIN','2.5.1','BESA');
  inherited;
end;

procedure TbsZIN_251.Setcondition(const Value: TbsST_251);
begin
  SetObject('CONDITION',Value);
end;

procedure TbsZIN_251.Setifcondition(const Value: TbsST_251);
begin
  SetObject('IFCONDITION',Value);
end;

procedure InitZINSegment;
var
  LDefinition : TBSHL7Definition;
begin
  LDefinition := TBSHL7Definition.Create('ZIN','2.5.1','BESA','S');
  BSHL7Library.AddType(LDefinition);
  LDefinition.Add('IFCONDITION','ST',0,1);
  LDefinition.Add('CONDITION','ST',0,1);
end;

initialization
  InitZINSegment;


end.
