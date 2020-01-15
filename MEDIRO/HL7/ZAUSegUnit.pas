unit ZAUSegUnit;

interface
uses
  bsHL7Object,BSHL7DT251;


type
  TbsZAU_251 = class(TBSHL7Segment)
  private
    function Getinscarrier1: TbsST_251;
    function Getinscarrier2: TbsST_251;
    function Getinscarrier3: TbsST_251;
    function Getinscarrier4: TbsST_251;
    function Getinscarrier5: TbsST_251;
    function Getinscarrier6: TbsST_251;
    function Getpreauthcd1: TbsST_251;
    function Getpreauthcd2: TbsST_251;
    function Getpreauthcd3: TbsST_251;
    function Getpreauthcd4: TbsST_251;
    function Getpreauthcd5: TbsST_251;
    function Getpreauthcd6: TbsST_251;
    procedure Setinscarrier1(const Value: TbsST_251);
    procedure Setinscarrier2(const Value: TbsST_251);
    procedure Setinscarrier3(const Value: TbsST_251);
    procedure Setinscarrier4(const Value: TbsST_251);
    procedure Setinscarrier5(const Value: TbsST_251);
    procedure Setinscarrier6(const Value: TbsST_251);
    procedure Setpreauthcd1(const Value: TbsST_251);
    procedure Setpreauthcd2(const Value: TbsST_251);
    procedure Setpreauthcd3(const Value: TbsST_251);
    procedure Setpreauthcd4(const Value: TbsST_251);
    procedure Setpreauthcd5(const Value: TbsST_251);
    procedure Setpreauthcd6(const Value: TbsST_251);
  public
    property inscarrier1 : TbsST_251 read Getinscarrier1 write Setinscarrier1;
    property preauthcd1 : TbsST_251 read Getpreauthcd1 write Setpreauthcd1;
    property inscarrier2 : TbsST_251 read Getinscarrier2 write Setinscarrier2;
    property preauthcd2 : TbsST_251 read Getpreauthcd2 write Setpreauthcd2;
    property inscarrier3 : TbsST_251 read Getinscarrier3 write Setinscarrier3;
    property preauthcd3 : TbsST_251 read Getpreauthcd3 write Setpreauthcd3;
    property inscarrier4 : TbsST_251 read Getinscarrier4 write Setinscarrier4;
    property preauthcd4 : TbsST_251 read Getpreauthcd4 write Setpreauthcd4;
    property inscarrier5 : TbsST_251 read Getinscarrier5 write Setinscarrier5;
    property preauthcd5 : TbsST_251 read Getpreauthcd5 write Setpreauthcd5;
    property inscarrier6 : TbsST_251 read Getinscarrier6 write Setinscarrier6;
    property preauthcd6 : TbsST_251 read Getpreauthcd6 write Setpreauthcd6;
    procedure Init;override;
  end;


implementation

{ TbsZAU_251 }

function TbsZAU_251.Getinscarrier1: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('INSCARRIER1'));
end;

function TbsZAU_251.Getinscarrier2: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('INSCARRIER2'));
end;

function TbsZAU_251.Getinscarrier3: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('INSCARRIER3'));
end;

function TbsZAU_251.Getinscarrier4: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('INSCARRIER4'));
end;

function TbsZAU_251.Getinscarrier5: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('INSCARRIER5'));
end;

function TbsZAU_251.Getinscarrier6: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('INSCARRIER6'));
end;

function TbsZAU_251.Getpreauthcd1: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('PREAUTHCD1'));
end;

function TbsZAU_251.Getpreauthcd2: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('PREAUTHCD2'));
end;

function TbsZAU_251.Getpreauthcd3: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('PREAUTHCD3'));
end;

function TbsZAU_251.Getpreauthcd4: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('PREAUTHCD3'));
end;

function TbsZAU_251.Getpreauthcd5: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('PREAUTHCD5'));
end;

function TbsZAU_251.Getpreauthcd6: TbsST_251;
begin
   Result:=TbsST_251(GetOrCreateObject('PREAUTHCD6'));
end;

procedure TbsZAU_251.Init;
begin
  SetType('ZAU','2.5.1','BESA');
  inherited;
end;

procedure TbsZAU_251.Setinscarrier1(const Value: TbsST_251);
begin
  SetObject('INSCARRIER1',Value);
end;

procedure TbsZAU_251.Setinscarrier2(const Value: TbsST_251);
begin
  SetObject('INSCARRIER2',Value);
end;

procedure TbsZAU_251.Setinscarrier3(const Value: TbsST_251);
begin
  SetObject('INSCARRIER3',Value);
end;

procedure TbsZAU_251.Setinscarrier4(const Value: TbsST_251);
begin
  SetObject('INSCARRIER4',Value);
end;

procedure TbsZAU_251.Setinscarrier5(const Value: TbsST_251);
begin
  SetObject('INSCARRIER5',Value);
end;

procedure TbsZAU_251.Setinscarrier6(const Value: TbsST_251);
begin
  SetObject('INSCARRIER6',Value);
end;

procedure TbsZAU_251.Setpreauthcd1(const Value: TbsST_251);
begin
  SetObject('PREAUTHCD1',Value);
end;

procedure TbsZAU_251.Setpreauthcd2(const Value: TbsST_251);
begin
  SetObject('PREAUTHCD2',Value);
end;

procedure TbsZAU_251.Setpreauthcd3(const Value: TbsST_251);
begin
  SetObject('PREAUTHCD3',Value);
end;

procedure TbsZAU_251.Setpreauthcd4(const Value: TbsST_251);
begin
  SetObject('PREAUTHCD4',Value);
end;

procedure TbsZAU_251.Setpreauthcd5(const Value: TbsST_251);
begin
  SetObject('PREAUTHCD5',Value);
end;

procedure TbsZAU_251.Setpreauthcd6(const Value: TbsST_251);
begin
  SetObject('PREAUTHCD6',Value);
end;

procedure InitZAUSegment;
var
  LDefinition : TBSHL7Definition;
begin
  LDefinition := TBSHL7Definition.Create('ZAU','2.5.1','BESA','S');
  BSHL7Library.AddType(LDefinition);
  LDefinition.Add('INSCARRIER1','ST',0,1);
  LDefinition.Add('PREAUTHCD1','ST',0,1);
  LDefinition.Add('INSCARRIER2','ST',0,1);
  LDefinition.Add('PREAUTHCD2','ST',0,1);
  LDefinition.Add('INSCARRIER3','ST',0,1);
  LDefinition.Add('PREAUTHCD3','ST',0,1);
  LDefinition.Add('INSCARRIER4','ST',0,1);
  LDefinition.Add('PREAUTHCD4','ST',0,1);
  LDefinition.Add('INSCARRIER5','ST',0,1);
  LDefinition.Add('PREAUTHCD5','ST',0,1);
  LDefinition.Add('INSCARRIER6','ST',0,1);
  LDefinition.Add('PREAUTHCD6','ST',0,1);
end;

initialization
  InitZAUSegment;

end.
