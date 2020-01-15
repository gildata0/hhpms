unit uHLClass;

interface

uses
  SysUtils,
{$IFDEF FPC}
  StdCtrls,
{$ELSE}
{$IFDEF FMX}
  FMX.Memo,
{$ELSE}
  StdCtrls,
{$ENDIF}
{$ENDIF}
  bsHL7Object, ZPI_Z01MsgUnit, bsUtils
  // ,BSHL722, BSHL7Grp22, BSHL7DT22
    , BSHL7251, BSHL7Grp251, BSHL7DT251;
type
   TParseValue = record
               MessageControlID : string;
               TriggerEvent,   //O19
               MessageStructure,   ////OMG_O19
               MessageCode  // 'OMG'
                   : string;
end;

type
   TParseValue_OMG = record
               patID : string;
               modality,
               patStatus  : string;
end;
const
  MsgADT_A01_251 = 'MSH|^~\&||Sending|||20170609200200||ADT^A01||P|2.2|123' +
    #13 + 'EVN|' + #13 + 'PID|||123456||Doe^John' + #13 + 'PV1|' + #13 + #10;

  MsgXmlADT_A01_251 = '<ADT_A01 xmlns="urn:hl7-org:v2xml">' + '  <MSH>' +
    '		<MSH.1>|</MSH.1>' + '		<MSH.2>^~\&amp;</MSH.2>' +
    '		<MSH.4>Sending</MSH.4>' + '		<MSH.7>' +
    '			<TS.1>20170609201558</TS.1>' + '		</MSH.7>' + '		<MSH.9>' +
    '			<CM_MSG.1>ADT</CM_MSG.1>' + '			<CM_MSG.2>A01</CM_MSG.2>' +
    '		</MSH.9>' + '		<MSH.11>P</MSH.11>' + '		<MSH.12>2.2</MSH.12>' +
    '		<MSH.13>123</MSH.13>' + '	</MSH>' + '	<PID>' + '		<PID.3>' +
    '			<CM_PAT_ID.1>123456</CM_PAT_ID.1>' + '		</PID.3>' + '		<PID.5>'
    + '			<PN.1>Doe</PN.1>' + '			<PN.2>John</PN.2>' + '		</PID.5>' +
    '	</PID>' + '</ADT_A01>';

  MsgORU_R01_251 =
    'MSH|^~\&|ABL735^ABL735 Operating Theatres|ABL735^ABL735 Operating Theatres|||'
    + '20010516135518||ORU^R01|20010516135518|P^not present|2.2' + #13 +
    'PID|1|||F872518654|Doe^John|||U' + #13 +
    'OBR|1||6^Sample #||||||||O||||Arterial^' + #13 + 'NTE|1|L|443' + #13 +
    'OBX|1|ST|^pH^M||7.600|||N|||F|||20010503151400||' + #13 +
    'OBX|2|ST|^pO2^M||127|mmHg||N|||F|||||' + #13 +
    'OBX|3|ST|^pCO2^M||20.4|mmHg||N|||F|||||' + #13 +
    'OBX|4|ST|^Cl-^M||73|mmol/L||N|||F|||||' + #13 +
    'OBX|5|ST|^K+^M||5.5|mmol/L||N|||F|||||' + #13 +
    'OBX|6|ST|^Na+^M||125|mmol/L||N|||F|||||' + #13 +
    'OBX|7|ST|^Glu^M||11.3|mmol/L||N|||F|||||' + #13 +
    'OBX|8|ST|^Lac^M||10.0|mmol/L||N|||F|||||' + #13 +
    'OBX|9|ST|^Ca++^M||0.36|mmol/L||N|||F|||||' + #13 +
    'OBX|10|ST|^tHb^M||17.3|g/dL||N|||F|||||' + #13 + 'NTE|1|L|314' + #13 +
    'OBX|11|ST|^sO2^M||.....|%||N|||F|||||' + #13 + 'NTE|1|L|314' + #13 +
    'OBX|12|ST|^O2Hb^M||-58.4|%||<|||F|||||' + #13 + 'NTE|1|L|314^94' + #13 +
    'OBX|13|ST|^COHb^M||110.4|%||>|||F|||||' + #13 + 'NTE|1|L|314^93' + #13 +
    'OBX|14|ST|^MetHb^M||-6.5|%||<|||F|||||' + #13 + 'NTE|1|L|314^94' + #13 +
    'OBX|15|ST|^tBil^M||.....|micromol/L||<|||F|||||' + #13 + 'NTE|1|L|314^94' +
    #13 + 'OBX|16|ST|^T^I||37.0|Cel|||||F|||||' + #13 +
    'OBX|17|ST|^FIO2^D||21.0|%|||||F|||||' + #13 +
    'OBX|18|ST|^pH(T)^M||7.600|||N|||F|||||' + #13 +
    'OBX|19|ST|^pCO2(T)^M||20.4|mmHg||N|||F|||||' + #13 +
    'OBX|20|ST|^SBE^C||-1.5|mmol/L|||||F|||||' + #13 +
    'OBX|21|ST|^pO2(T)^M||127|mmHg||N|||F|||||' + #13#10;

  MsgXmlORU_R01_22 = '<ORU_R01 xmlns="urn:hl7-org:v2xml">' + '  <MSH>' +
    '    <MSH.1>|</MSH.1>' + '    <MSH.2>^~\&amp;</MSH.2>' +
    '    <MSH.3>ABL735^ABL735 Operating Theatres</MSH.3>' +
    '    <MSH.4>ABL735^ABL735 Operating Theatres</MSH.4>' + '    <MSH.7>' +
    '      <TS.1>20010516135518</TS.1>' + '    </MSH.7>' + '    <MSH.9>' +
    '      <CM_MSG.1>ORU</CM_MSG.1>' + '      <CM_MSG.2>R01</CM_MSG.2>' +
    '    </MSH.9>' + '    <MSH.10>20010516135518</MSH.10>' +
    '    <MSH.11>P^not present</MSH.11>' + '    <MSH.12>2.2</MSH.12>' +
    '  </MSH>' + '  <ORU_R01.PATIENT_RESULT>' + '    <ORU_R01.PATIENT>' +
    '      <PID>' + '        <PID.1>1</PID.1>' +
    '        <PID.4>F872518654</PID.4>' + '        <PID.5>' +
    '          <PN.1>Doe</PN.1>' + '          <PN.2>John</PN.2>' +
    '        </PID.5>' + '        <PID.8>U</PID.8>' + '      </PID>' +
    '    </ORU_R01.PATIENT>' + '    <ORU_R01.ORDER_OBSERVATION>' + '      <OBR>'
    + '        <OBR.1>1</OBR.1>' + '        <OBR.3>' +
    '          <CM_FILLER.1>6</CM_FILLER.1>' +
    '          <CM_FILLER.2>Sample #</CM_FILLER.2>' + '        </OBR.3>' +
    '        <OBR.11>O</OBR.11>' + '        <OBR.15>' +
    '          <CM_SPS.1>Arterial</CM_SPS.1>' + '        </OBR.15>' +
    '      </OBR>' + '      <NTE>' + '        <NTE.1>1</NTE.1>' +
    '        <NTE.2>L</NTE.2>' + '        <NTE.3>443</NTE.3>' + '      </NTE>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>1</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>pH</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>7.600</OBX.5>' + '          <OBX.8>N</OBX.8>' +
    '          <OBX.11>F</OBX.11>' + '          <OBX.14>' +
    '            <TS.1>20010503151400</TS.1>' + '          </OBX.14>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>2</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>pO2</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>127</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>mmHg</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>3</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' +
    '            <CE.2>pCO2</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>20.4</OBX.5>' + '          <OBX.6>'
    + '            <CE.1>mmHg</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>4</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>Cl-</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>73</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>mmol/L</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>5</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>K+</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>5.5</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>mmol/L</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>6</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>Na+</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>125</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>mmol/L</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>7</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>Glu</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>11.3</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>mmol/L</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>8</OBX.1> ' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>Lac</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>10.0</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>mmol/L</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>9</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' +
    '            <CE.2>Ca++</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>0.36</OBX.5>' + '          <OBX.6>'
    + '            <CE.1>mmol/L</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>10</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>tHb</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>17.3</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>g/dL</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '        <NTE>' + '          <NTE.1>1</NTE.1>' +
    '          <NTE.2>L</NTE.2>' + '          <NTE.3>314</NTE.3>' +
    '        </NTE>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>11</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>sO2</CE.2>'
    + '            <CE.3>M</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>.....</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>%</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '        <NTE>' + '          <NTE.1>1</NTE.1>' +
    '          <NTE.2>L</NTE.2>' + '          <NTE.3>314</NTE.3>' +
    '        </NTE>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>12</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' +
    '            <CE.2>O2Hb</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>-58.4</OBX.5>' +
    '          <OBX.6>' + '            <CE.1>%</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>&lt;</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '        <NTE>' + '          <NTE.1>1</NTE.1>' +
    '          <NTE.2>L</NTE.2>' + '          <NTE.3>314^94</NTE.3>' +
    '        </NTE>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>13</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' +
    '            <CE.2>COHb</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>110.4</OBX.5>' +
    '          <OBX.6>' + '            <CE.1>%</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>&gt;</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '        <NTE>' + '          <NTE.1>1</NTE.1>' +
    '          <NTE.2>L</NTE.2>' + '          <NTE.3>314^93</NTE.3>' +
    '        </NTE>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>14</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' +
    '            <CE.2>MetHb</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '         <OBX.5>-6.5</OBX.5>' + '          <OBX.6>'
    + '            <CE.1>%</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>&lt;</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '        <NTE>' + '          <NTE.1>1</NTE.1>' +
    '          <NTE.2>L</NTE.2>' + '          <NTE.3>314^94</NTE.3>' +
    '        </NTE>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>15</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' +
    '            <CE.2>tBil</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>.....</OBX.5>' +
    '          <OBX.6>' + '            <CE.1>micromol/L</CE.1>' +
    '          </OBX.6>' + '          <OBX.8>&lt;</OBX.8>' +
    '          <OBX.11>F</OBX.11>' + '        </OBX>' + '        <NTE>' +
    '          <NTE.1>1</NTE.1>' + '          <NTE.2>L</NTE.2>' +
    '          <NTE.3>314^94</NTE.3>' + '        </NTE>' +
    '      </ORU_R01.OBSERVATION>' + '      <ORU_R01.OBSERVATION>' +
    '        <OBX>' + '          <OBX.1>16</OBX.1>' +
    '          <OBX.2>ST</OBX.2>' + '          <OBX.3>' + '            <CE.1/>'
    + '            <CE.2>T</CE.2>' + '            <CE.3>I</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>37.0</OBX.5>' + '          <OBX.6>'
    + '            <CE.1>Cel</CE.1>' + '          </OBX.6>' +
    '          <OBX.11>F</OBX.11>' + '        </OBX>' +
    '      </ORU_R01.OBSERVATION>' + '      <ORU_R01.OBSERVATION>' +
    '        <OBX>' + '          <OBX.1>17</OBX.1>' +
    '          <OBX.2>ST</OBX.2>' + '          <OBX.3>' + '            <CE.1/>'
    + '            <CE.2>FIO2</CE.2>' + '            <CE.3>D</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>21.0</OBX.5>' + '          <OBX.6>'
    + '            <CE.1>%</CE.1>' + '          </OBX.6>' +
    '          <OBX.11>F</OBX.11>' + '        </OBX>' +
    '      </ORU_R01.OBSERVATION>' + '      <ORU_R01.OBSERVATION>' +
    '        <OBX>' + '          <OBX.1>18</OBX.1>' +
    '          <OBX.2>ST</OBX.2>' + '          <OBX.3>' + '            <CE.1/>'
    + '            <CE.2>pH(T)</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>7.600</OBX.5>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>19</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' +
    '            <CE.2>pCO2(T)</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>20.4</OBX.5>' + '          <OBX.6>'
    + '            <CE.1>mmHg</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>20</OBX.1>' + '          <OBX.2>ST</OBX.2>' +
    '          <OBX.3>' + '            <CE.1/>' + '            <CE.2>SBE</CE.2>'
    + '            <CE.3>C</CE.3>' + '          </OBX.3>' +
    '          <OBX.5>-1.5</OBX.5>' + '          <OBX.6>' +
    '            <CE.1>mmol/L</CE.1>' + '          </OBX.6>' +
    '          <OBX.11>F</OBX.11>' + '        </OBX>' +
    '      </ORU_R01.OBSERVATION>' + '      <ORU_R01.OBSERVATION>' +
    '        <OBX>' + '          <OBX.1>21</OBX.1>' +
    '          <OBX.2>ST</OBX.2>' + '          <OBX.3>' + '            <CE.1/>'
    + '            <CE.2>pO2(T)</CE.2>' + '            <CE.3>M</CE.3>' +
    '          </OBX.3>' + '          <OBX.5>127</OBX.5>' + '          <OBX.6>'
    + '            <CE.1>mmHg</CE.1>' + '          </OBX.6>' +
    '          <OBX.8>N</OBX.8>' + '          <OBX.11>F</OBX.11>' +
    '        </OBX>' + '      </ORU_R01.OBSERVATION>' +
    '    </ORU_R01.ORDER_OBSERVATION>' + '  </ORU_R01.PATIENT_RESULT>' +
    '</ORU_R01>';

  MsgXmlORU_R01_251 =

    '<ORU_R01 xmlns="urn:hl7-org:v2xml">' + '  <MSH>' + '    <MSH.1>|</MSH.1>' +
    '    <MSH.2>^~\&amp;</MSH.2>' + '    <MSH.3>' + '      <HD.1>GHH LAB</HD.1>'
    + '    </MSH.3>' + '    <MSH.4>' + '      <HD.1>ELAB-3</HD.1>' +
    '    </MSH.4>' + '    <MSH.5>' + '      <HD.1>GHH OE</HD.1>' +
    '    </MSH.5>' + '    <MSH.6>' + '      <HD.1>BLDG4</HD.1>' + '    </MSH.6>'
    + '    <MSH.7>' + '      <TS.1>200202150930</TS.1>' + '    </MSH.7>' +
    '    <MSH.9>' + '      <MSG.1>ORU</MSG.1>' + '      <MSG.2>R01</MSG.2>' +
    '    </MSH.9>' + '    <MSH.10>CNTRL-3456</MSH.10>' + '    <MSH.11>' +
    '      <PT.1>P</PT.1>' + '    </MSH.11>' + '    <MSH.12>' +
    '      <VID.1>2.4</VID.1>' + '    </MSH.12>' + '  </MSH>' +
    '  <ORU_R01.PATIENT_RESULT>' + '    <ORU_R01.PATIENT>' + '      <PID>' +
    '        <PID.3>' + '          <CX.1>555-44-4444</CX.1>' +
    '        </PID.3>' + '        <PID.5>' + '          <XPN.1>' +
    '            <FN.1>EVERYWOMAN</FN.1>' + '          </XPN.1>' +
    '          <XPN.2>EVE</XPN.2>' + '          <XPN.3>E</XPN.3>' +
    '          <XPN.7>L</XPN.7>' + '        </PID.5>' + '        <PID.6>' +
    '          <XPN.1>' + '            <FN.1>JONES</FN.1>' +
    '          </XPN.1>' + '        </PID.6>' + '        <PID.7>' +
    '          <TS.1>196203520</TS.1>' + '        </PID.7>' +
    '        <PID.8>F</PID.8>' + '        <PID.11>' + '          <XAD.1>' +
    '            <SAD.1>153 FERNWOOD DR.</SAD.1>' + '          </XAD.1>' +
    '          <XAD.3>STATESVILLE</XAD.3>' + '          <XAD.4>OH</XAD.4>' +
    '          <XAD.5>35292</XAD.5>' + '        </PID.11>' + '        <PID.13>'
    + '          <XTN.1>(206)3345232</XTN.1>' + '        </PID.13>' +
    '        <PID.14>' + '          <XTN.1>(206)752-121</XTN.1>' +
    '        </PID.14>' + '        <PID.18>' +
    '          <CX.1>AC555444444</CX.1>' + '        </PID.18>' +
    '        <PID.20>' + '          <DLN.1>67-A4335</DLN.1>' +
    '          <DLN.2>OH</DLN.2>' + '          <DLN.3>20030520</DLN.3>' +
    '        </PID.20>' + '      </PID>' + '    </ORU_R01.PATIENT>' +
    '    <ORU_R01.ORDER_OBSERVATION>' + '      <OBR>' +
    '        <OBR.1>1</OBR.1>' + '        <OBR.2>' +
    '          <EI.1>845439</EI.1>' + '          <EI.2>GHH OE</EI.2>' +
    '        </OBR.2>' + '        <OBR.3>' + '          <EI.1>1045813</EI.1>' +
    '          <EI.2>GHH LAB</EI.2>' + '        </OBR.3>' + '        <OBR.4>' +
    '          <CE.1>1554-5</CE.1>' + '          <CE.2>GLUCOSE</CE.2>' +
    '          <CE.3>LN</CE.3>' + '        </OBR.4>' + '        <OBR.7>' +
    '          <TS.1>200202150730</TS.1>' + '        </OBR.7>' +
    '        <OBR.16>' + '          <XCN.1>555-55-5555</XCN.1>' +
    '          <XCN.2>' + '            <FN.1>PRIMARY</FN.1>' +
    '          </XCN.2>' + '          <XCN.3>PATRICIA P</XCN.3>' +
    '          <XCN.7>MD</XCN.7>' + '          <XCN.9>' +
    '            <HD.1>LEVEL SEVEN HEALTHCARE, INC.</HD.1>' +
    '          </XCN.9>' + '        </OBR.16>' + '        <OBR.25>F</OBR.25>' +
    '        <OBR.32>' + '          <NDL.1>' +
    '            <CNN.1>444-44-4444</CNN.1>' +
    '            <CNN.2>HIPPOCRATES</CNN.2>' +
    '            <CNN.3>HOWARD H</CNN.3>' + '            <CNN.7>MD</CNN.7>' +
    '          </NDL.1>' + '        </OBR.32>' + '      </OBR>' +
    '      <ORU_R01.OBSERVATION>' + '        <OBX>' +
    '          <OBX.1>1</OBX.1>' + '          <OBX.2>SN</OBX.2>' +
    '          <OBX.3>' + '            <CE.1>1554-5</CE.1>' +
    '            <CE.2>GLUCOSE POST 12H CFST</CE.2>' +
    '            <CE.3>LN</CE.3>' + '          </OBX.3>' + '          <OBX.5>' +
    '            <SN.2>182</SN.2>' + '          </OBX.5>' + '          <OBX.6>'
    + '            <CE.1>mg/dl</CE.1>' + '          </OBX.6>' +
    '          <OBX.7>70-105</OBX.7>' + '          <OBX.8>H</OBX.8>' +
    '          <OBX.11>F</OBX.11>' + '        </OBX>' +
    '      </ORU_R01.OBSERVATION>' + '    </ORU_R01.ORDER_OBSERVATION>' +
    '  </ORU_R01.PATIENT_RESULT>' + '</ORU_R01>';

  {
    '<ORU_R01 xmlns="urn:hl7-org:v2xml">'+
    '<MSH>'+
    '  <MSH.1>|</MSH.1>'+
    '  <MSH.2>^~\&amp;</MSH.2>'+
    '  <MSH.3>'+
    '    <HD.1>GHH LAB</HD.1>'+
    '  </MSH.3>'+
    '  <MSH.4>'+
    '    <HD.1>ELAB-3</HD.1>'+
    '  </MSH.4>'+
    '  <MSH.5>'+
    '    <HD.1>GHH OE</HD.1>'+
    '  </MSH.5>'+
    '  <MSH.6>'+
    '    <HD.1>BLDG4</HD.1>'+
    '  </MSH.6>'+
    '  <MSH.7>'+
    '    <TS.1>200202150930</TS.1>'+
    '  </MSH.7>'+
    '  <MSH.9>'+
    '    <MSG.1>ORU</MSG.1>'+
    '    <MSG.2>R01</MSG.2>'+
    '  </MSH.9>'+
    '  <MSH.10>CNTRL-3456</MSH.10>'+
    '  <MSH.11>'+
    '    <PT.1>P</PT.1>'+
    '  </MSH.11>'+
    '  <MSH.12>'+
    '    <VID.1>2.4</VID.1>'+
    '  </MSH.12>'+
    '</MSH>'+
    '<ORU_R01.PATIENT_RESULT>'+
    '  <ORU_R01.PATIENT>'+
    '    <PID>'+
    '      <PID.3>'+
    '        <CX.1>555-44-4444</CX.1>'+
    '      </PID.3>'+
    '      <PID.5>'+
    '        <XPN.1>EVERYWOMAN</XPN.1>'+
    '        <XPN.2>EVE</XPN.2>'+
    '        <XPN.3>E</XPN.3>'+
    '        <XPN.7>L</XPN.7>'+
    '      </PID.5>'+
    '      <PID.6>'+
    '        <XPN.1>JONES</XPN.1>'+
    '      </PID.6>'+
    '      <PID.7>'+
    '        <TS.1>196203520</TS.1>'+
    '      </PID.7>'+
    '      <PID.8>F</PID.8>'+
    '      <PID.11>'+
    '        <XAD.1>153 FERNWOOD DR.</XAD.1>'+
    '        <XAD.3>STATESVILLE</XAD.3>'+
    '        <XAD.4>OH</XAD.4>'+
    '        <XAD.5>35292</XAD.5>'+
    '      </PID.11>'+
    '      <PID.13>'+
    '        <XTN.1>(206)3345232</XTN.1>'+
    '      </PID.13>'+
    '      <PID.14>'+
    '        <XTN.1>(206)752-121</XTN.1>'+
    '      </PID.14>'+
    '      <PID.18>'+
    '        <CX.1>AC555444444</CX.1>'+
    '      </PID.18>'+
    '      <PID.20>'+
    '        <DLN.1>67-A4335</DLN.1>'+
    '        <DLN.2>OH</DLN.2>'+
    '        <DLN.3>20030520</DLN.3>'+
    '      </PID.20>'+
    '    </PID>'+
    '    <ORU_R01.VISIT/>'+
    '  </ORU_R01.PATIENT>'+
    '  <ORU_R01.ORDER_OBSERVATION>'+
    '    <OBR>'+
    '      <OBR.1>1</OBR.1>'+
    '      <OBR.2>'+
    '        <EI.1>845439</EI.1>'+
    '        <EI.2>GHH OE</EI.2>'+
    '      </OBR.2>'+
    '      <OBR.3>'+
    '        <EI.1>1045813</EI.1>'+
    '        <EI.2>GHH LAB</EI.2>'+
    '      </OBR.3>'+
    '      <OBR.4>'+
    '        <CE.1>1554-5</CE.1>'+
    '        <CE.2>GLUCOSE</CE.2>'+
    '        <CE.3>LN</CE.3>'+
    '      </OBR.4>'+
    '      <OBR.7>'+
    '        <TS.1>200202150730</TS.1>'+
    '      </OBR.7>'+
    '      <OBR.16>'+
    '        <XCN.1>555-55-5555</XCN.1>'+
    '        <XCN.2>PRIMARY</XCN.2>'+
    '        <XCN.3>PATRICIA P</XCN.3>'+
    '        <XCN.7>MD</XCN.7>'+
    '        <XCN.9>LEVEL SEVEN HEALTHCARE, INC.</XCN.9>'+
    '      </OBR.16>'+
    '      <OBR.25>F</OBR.25>'+
    '      <OBR.32>'+
    '        <NDL.1>444-44-4444HIPPOCRATESHOWARD HMD</NDL.1>'+
    '      </OBR.32>'+
    '    </OBR>'+
    '    <ORU_R01.OBSERVATION>'+
    '      <OBX>'+
    '        <OBX.1>1</OBX.1>'+
    '        <OBX.2>SN</OBX.2>'+
    '        <OBX.3>'+
    '          <CE.1>1554-5</CE.1>'+
    '          <CE.2>GLUCOSE POST 12H CFST</CE.2>'+
    '          <CE.3>LN</CE.3>'+
    '        </OBX.3>'+
    '        <OBX.5>'+
    '          <SN.2>182</SN.2>'+
    '        </OBX.5>'+
    '        <OBX.6>'+
    '          <CE.1>mg/dl</CE.1>'+
    '        </OBX.6>'+
    '        <OBX.7>70-105</OBX.7>'+
    '        <OBX.8>H</OBX.8>'+
    '        <OBX.11>F</OBX.11>'+
    '      </OBX>'+
    '    </ORU_R01.OBSERVATION>'+
    '    <ORU_R01.OBSERVATION>'+
    '      <OBX>'+
    '        <OBX.1>2</OBX.1>'+
    '        <OBX.2>ED</OBX.2>'+
    '        <OBX.5>'+
    '          <ED.2>TEXT</ED.2>'+
    '          <ED.3>PDF</ED.3>'+
    '          <ED.4>Base64</ED.4>'+
    '          <ED.5>PDF_BASE64_STR</ED.5>'+
    '        </OBX.5>'+
    '      </OBX>'+
    '    </ORU_R01.OBSERVATION>'+
    '  </ORU_R01.ORDER_OBSERVATION>'+
    '</ORU_R01.PATIENT_RESULT>'+
    '</ORU_R01>';
  }

procedure MessageCreate(AMemo: TMemo; AXML: Boolean);
procedure CreateMessagePath(AMemo: TMemo; AXML: Boolean);
procedure ParseMessage(AMemo: TMemo; AXML: Boolean);
procedure ParseMessagePath(AMemo: TMemo; AXML: Boolean);

procedure MessageCreateAdv(AMemo: TMemo; AXML: Boolean);
procedure CreateMessagePathAdv(AMemo: TMemo; AXML: Boolean);
procedure ParseMessageAdv(AMemo: TMemo; AXML: Boolean);
procedure ParseMessagePathAdv(AMemo: TMemo; AXML: Boolean);

procedure CreateCustomMessage(AMemo: TMemo; AXML: Boolean);
procedure CreateCustomMessageWithPath(AMemo: TMemo; AXML: Boolean);
procedure ParseCustomMessage(AMemo: TMemo);
procedure ParseCustomMessageWithPath(AMemo: TMemo);

procedure MessageCreate_ADT_A01(AMemo: TMemo;
    AXML: Boolean;
    patAdmitKind:string;
    nowTime:Tdatetime);// nowTime:Tdatetime);
procedure MessageCreate_ADT_A02(AMemo: TMemo; AXML: Boolean; nowTime:Tdatetime);
procedure MessageCreate_ADT_A03(AMemo: TMemo; AXML: Boolean; nowTime:Tdatetime);
procedure MessageCreate_ADT_A04(AMemo: TMemo; AXML: Boolean; nowTime:Tdatetime);
procedure MessageCreate_OMG_019(AMemo: TMemo; AXML: Boolean; nowTime:Tdatetime;
     aOrderNO: string;
     groupCode : string;
     groupName : string;
     aEngDoctorName  :string;
     aEngHospitalName:string;
     seqNo : string;
     aReasonForStudy : string;  //ToDO : 검사메모 - 검사별로 보내야 한다.
     aClinicalInfo : string;    //ToDO : Doctor's Note
     isCancel : boolean);


procedure MessageCreate_ADT_A11(AMemo: TMemo;
    AXML: Boolean;
    patAdmitKind:string;
    nowTime:Tdatetime);
procedure MessageCreate_ADT_A05(AMemo: TMemo; AXML: Boolean);
procedure MessageCreate_ADT_A06(AMemo: TMemo; AXML: Boolean);
procedure MessageCreate_ADT_A07(AMemo: TMemo; AXML: Boolean);
procedure MessageCreate_ADT_A08(AMemo: TMemo; AXML: Boolean);
procedure MessageCreate_ADT_A40(AMemo: TMemo; AXML: Boolean);
procedure ParseMessage_OMG_019(AMemo: TMemo; AXML: Boolean);
procedure ParseMessage_ReadHeader(AMemo: TMemo; AXML: Boolean);
function Parse_ReadHeader(header : ansistring) : TParseValue;
function Parse_OMG_019(header : ansistring) : TParseValue_OMG;


implementation
uses uFunctions, uGogekData, uConfig;

procedure MessageCreate(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsADT_A01_251;
begin
  try
    msg := TbsADT_A01_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].FamilyName.AsString := 'Doe';
    msg.PID.PatientName[0].GivenName.AsString := 'John';
    // msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    msg.PID.PatientID.AsString := '123456';

    AMemo.Lines.Append('Generate Message');
    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure CreateMessagePath(AMemo: TMemo; AXML: Boolean);
var
  msg: TBSHL7Message;
begin
  try
    msg := TBSHL7Message.Create('ADT_A01', '251');

    // Populate the MSH Segment
    msg.S['MSH/Sendingfacility'] := 'Sending';
    msg.S['MSH/Sequencenumber'] := '123';

    // Populate the PID Segment
    msg.S['PID/PatientName/FamilyName'] := 'Doe';
    msg.S['PID/PatientName/GivenName'] := 'John';
    msg.S['PID/PatientIDInternalID(1)/IDNumber'] := '123456';

    AMemo.Lines.Append('Generate Message with Path');
    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);

    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure ParseMessage(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsADT_A01_251;
  ASending, ASeq, AFName, AGName, AIDNumber: string;
begin

{  MsgADT_A01_251 = 'MSH|^~\&||Sending|||20170609200200||ADT^A01||P|2.2|123' +
    #13 + 'EVN|' + #13 + 'PID|||123456||Doe^John' + #13 + 'PV1|' + #13 + #10;
}



  try
    msg := TbsADT_A01_251.Create;

    if AXML then
      msg.AsXML := MsgXmlADT_A01_251
    else
      msg.AsHL7 := MsgADT_A01_251;


    // Get the Sendingfacility value
    ASending := msg.MSH.Sendingfacility.AsString; // Sending
    ASeq := msg.MSH.Sequencenumber.AsString; // 123;

    // Access the PID Segment
    AFName := msg.PID.PatientName[0].FamilyName.AsString; // Doe
    AGName := msg.PID.PatientName[0].GivenName.AsString; // John
    // AIDnumber:=msg.PID.PatientIDInternalID[0].IDNumber.AsString;
    AIDNumber := msg.PID.PatientID.AsString; // 123456

    AMemo.Lines.Append('Parse Message');
    AMemo.Lines.Append('Family Name :' + AFName);
    AMemo.Lines.Append('Given Name :' + AGName);
    AMemo.Lines.Append('ID Number :' + AIDNumber);
  finally
    msg.Free;
  end;

end;

procedure ParseMessagePath(AMemo: TMemo; AXML: Boolean);
var
  msg: TBSHL7Message;
  ASending, ASeq, AFName, AGName, AIDNumber: string;
begin
  try
    msg := TBSHL7Message.Create('ADT_A01', '251');

    if AXML then
      msg.AsXML := MsgXmlADT_A01_251
    else
      msg.AsHL7 := MsgADT_A01_251;

    // Populate the MSH Segment
    ASending := msg.S['MSH/Sendingfacility']; // Sending
    ASeq := msg.S['MSH/Sequencenumber']; // 123

    // Populate the PID Segment
    AFName := msg.S['PID/PatientName/FamilyName']; // Doe
    AGName := msg.S['PID/PatientName/GivenName']; // John;
    AIDNumber := msg.S['PID/PatientIDInternalID(1)/IDNumber']; // '123456

    AMemo.Lines.Append('Parse Message with Path');
    AMemo.Lines.Append('Family Name :' + AFName);
    AMemo.Lines.Append('Given Name :' + AGName);
    AMemo.Lines.Append('ID Number :' + AIDNumber);

  finally
    msg.Free;
  end;

end;

procedure MessageCreateAdv(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsORU_R01_251;
  MSH: TbsMSH_251;
  PID: TbsPID_251;
  obr: TbsOBR_251;
  obx: TbsOBX_251;
  sn: TbsSN_251;
  ed: TbsED_251;
begin
  msg := TbsORU_R01_251.Create;

  // MSH
  MSH := msg.MSH;
  MSH.SendingApplication.NamespaceID.AsString := 'GHH LAB';
  MSH.Sendingfacility.NamespaceID.AsString := 'ELAB-3';
  MSH.ReceivingApplication.NamespaceID.AsString := 'GHH OE';
  MSH.ReceivingFacility.NamespaceID.AsString := 'BLDG4';
  // msh.DateTimeOfMessage.Time.TimeOfAnEvent.AsString:='200202150930';
  MSH.DateTimeOfMessage.Time.AsString := '200202150930';
  MSH.MessageControlID.AsString := 'CNTRL-3456';

  // PID
  PID := msg.PATIENT_RESULT[0].PATIENT.PID;

  // pid.PatientIdentifierList[0].ID.AsString:='555-44-4444';
  PID.PatientIdentifierList[0].AsString := '555-44-4444';
  PID.PatientName[0].FamilyName.Surname.AsString := 'EVERYWOMAN';
  PID.PatientName[0].GivenName.AsString := 'EVE';
  PID.PatientName[0].Secondandfurthergivennamesorinitialsthereof.
    AsString := 'E';
  PID.PatientName[0].Nametypecode.AsString := 'L';
  PID.MothersMaidenName[0].FamilyName.Surname.AsString := 'JONES';
  PID.DateTimeOfBirth.Time.AsString := '196203520'; // .TimeOfAnEvent.AsString
  PID.AdministrativeSex.AsString := 'F';
  PID.PatientAddress[0].Streetaddress.Streetormailingaddress.AsString :=
    '153 FERNWOOD DR.';
  PID.PatientAddress[0].City.AsString := 'STATESVILLE';
  PID.PatientAddress[0].Stateorprovince.AsString := 'OH';
  PID.PatientAddress[0].Ziporpostalcode.AsString := '35292';
  PID.PhoneNumberHome[0].Telephonenumber.AsString := '(206)3345232';
  PID.PhoneNumberBusiness[0].Telephonenumber.AsString := '(206)752-121';
  // pid.PatientAccountNumber.ID.AsString:='AC555444444';
  // pid.DriversLicenseNumberPatient.Driverslicensenumber.AsString:='67-A4335';
  // pid.DriversLicenseNumberPatient.Issuingstate_province_country.AsString:='OH';
  // pid.DriversLicenseNumberPatient.Expirationdate.AsString:='20030520';

  // OBR
  obr := msg.PATIENT_RESULT[0].ORDER_OBSERVATION[0].obr;
  obr.SetIDOBR.AsString := '1';
  obr.PlacerOrderNumber.Entityidentifier.AsString := '845439';
  obr.PlacerOrderNumber.NamespaceID.AsString := 'GHH OE';
  obr.FillerOrderNumber.Entityidentifier.AsString := '1045813';
  obr.FillerOrderNumber.NamespaceID.AsString := 'GHH LAB';
  obr.UniversalServiceIdentifier.Identifier.AsString := '1554-5';
  obr.UniversalServiceIdentifier.Text.AsString := 'GLUCOSE';
  obr.UniversalServiceIdentifier.Nameofcodingsystem.AsString := 'LN';
  // obr.ObservationDateTime.TimeOfAnEvent.AsString:='200202150730';
  obr.ObservationDateTime.Time.AsString := '200202150730';
  obr.OrderingProvider[0].IDnumber.AsString := '555-55-5555';
  obr.OrderingProvider[0].FamilyName.Surname.AsString := 'PRIMARY';
  obr.OrderingProvider[0].GivenName.AsString := 'PATRICIA P';
  // obr.OrderingProvider[0].Degree.AsString:='MD';
  obr.OrderingProvider[0].Assigningauthority.NamespaceID.AsString :=
    'LEVEL SEVEN HEALTHCARE, INC.';
  obr.ResultStatus.AsString := 'F';
  // obr.PrincipalResultInterpreter. .Create;
  // obr.PrincipalResultInterpreter.O['IDNumber'] .OPName.IDNumber.AsString:='444-44-4444';
  // obr.PrincipalResultInterpreter.V['IDNumber'].AsString  :='444-44-4444';
  // obr.PrincipalResultInterpreter.OPName.FamilyName.AsString:='HIPPOCRATES';
  // obr.PrincipalResultInterpreter.O['FamilyName'].AsString:='HIPPOCRATES';
  // obr.PrincipalResultInterpreter.OPName.GivenName.AsString:='HOWARD H';
  // obr.PrincipalResultInterpreter.O['GivenName'].AsString:='HOWARD H';
  // obr.PrincipalResultInterpreter.OPName.Degree.AsString:='MD';
  // obr.PrincipalResultInterpreter.O['Degree'].AsString:='MD';

  // OBX
  obx := msg.PATIENT_RESULT[0].ORDER_OBSERVATION[0].OBSERVATION[0].obx;
  obx.SetIDOBX.AsString := '1';
  // obx.ValueType[0] .ValueType.AsString:='SN';
  obx.ValueType[0].AsString := 'SN';
  obx.ObservationIdentifier.Identifier.AsString := '1554-5';
  obx.ObservationIdentifier.Text.AsString := 'GLUCOSE POST 12H CFST';
  obx.ObservationIdentifier.Nameofcodingsystem.AsString := 'LN';

  sn := TbsSN_251.Create;
  sn.Num1.AsString := '182';
  obx.ObservationValue[0] := sn;
  obx.Units.Identifier.AsString := 'mg/dl';
  obx.ReferencesRange.AsString := '70-105';
  // obx.AbnormalFlags.AsString:='H';
  obx.AbnormalFlags[0].AsString := 'H';
  obx.ObservationResultStatus.AsString := 'F';

  // PDF
  obx := msg.PATIENT_RESULT[0].ORDER_OBSERVATION[0].OBSERVATION[1].obx;
  obx.SetIDOBX.AsString := '2';
  // obx.ValueType.AsString:='ED';
  obx.ValueType[0].AsString := 'ED';

  ed := TbsED_251.Create;
  ed.Typeofdata.AsString := 'TEXT';
  ed.Datasubtype.AsString := 'PDF';
  ed.Encoding.AsString := 'Base64';
  ed.Data.Value := 'PDF_BASE64_STR'; // EncodeBase64String(PDF Content String)

  obx.ObservationValue[0] := ed;

  // HL7 format
  AMemo.Lines.Append('Message Create (Advanced)');

  if AXML then
    AMemo.Lines.Text := msg.AsXML
  else
    AMemo.Lines.Text := msg.AsHL7;

  msg.Free;
end;

procedure CreateMessagePathAdv(AMemo: TMemo; AXML: Boolean);
var
  msg: TBSHL7Message;
  MSH: TBSHL7Object;
  PID: TBSHL7Object;
  obr: TBSHL7Object;
  obx: TBSHL7Object;
  sn: TBSHL7Object;
begin
  msg := TBSHL7Message.Create('ORU_R01', '251');

  // MSH
  MSH := msg.O['MSH'];
  MSH.S['SendingApplication/NamespaceID'] := 'GHH LAB';
  MSH.S['SendingFacility/NamespaceID'] := 'ELAB-3';
  MSH.S['ReceivingApplication/NamespaceID'] := 'GHH OE';
  MSH.S['ReceivingFacility/NamespaceID'] := 'BLDG4';
  MSH.S['DateTimeOfMessage/TimeOfAnEvent'] := '200202150930';
  MSH.S['MessageControlID'] := 'CNTRL-3456';

  // PID
  PID := msg.O['PATIENT_RESULT(1)/PATIENT/PID'];
  PID.S['PatientIdentifierList(1)/ID'] := '555-44-4444';
  PID.S['PatientName(1)/Familyname/Surname'] := 'EVERYWOMAN';
  PID.S['PatientName(1)/Givenname'] := 'EVE';
  PID.S['PatientName(1)/Secondandfurthergivennamesorinitialsthereof'] := 'E';
  PID.S['PatientName(1)/Nametypecode'] := 'L';
  PID.S['MothersMaidenName(1)/Familyname/Surname'] := 'JONES';
  PID.S['DateTimeOfBirth/TimeOfAnEvent'] := '196203520';
  PID.S['AdministrativeSex'] := 'F';
  PID.S['PatientAddress(1)/Streetaddress/Streetormailingaddress'] :=
    '153 FERNWOOD DR.';
  PID.S['PatientAddress(1)/City'] := 'STATESVILLE';
  PID.S['PatientAddress(1)/Stateorprovince'] := 'OH';
  PID.S['PatientAddress(1)/Ziporpostalcode'] := '35292';
  PID.S['PhoneNumberHome(1)/Telephonenumber'] := '(206)3345232';
  PID.S['PhoneNumberBusiness(1)/Telephonenumber'] := '(206)752-121';
  PID.S['PatientAccountNumber/ID'] := 'AC555444444';
  PID.S['DriversLicenseNumberPatient/Driverslicensenumber'] := '67-A4335';
  PID.S['DriversLicenseNumberPatient/Issuingstate_province_country'] := 'OH';
  PID.S['DriversLicenseNumberPatient/Expirationdate'] := '20030520';

  // OBR
  obr := msg.O['PATIENT_RESULT(1)/ORDER_OBSERVATION(1)/OBR'];
  obr.S['SetIDOBR'] := '1';
  obr.S['PlacerOrderNumber/Entityidentifier'] := '845439';
  obr.S['PlacerOrderNumber/NamespaceID'] := 'GHH OE';
  obr.S['FillerOrderNumber/Entityidentifier'] := '1045813';
  obr.S['FillerOrderNumber/NamespaceID'] := 'GHH LAB';
  obr.S['UniversalServiceIdentifier/Identifier'] := '1554-5';
  obr.S['UniversalServiceIdentifier/Text'] := 'GLUCOSE';
  obr.S['UniversalServiceIdentifier/Nameofcodingsystem'] := 'LN';
  obr.S['ObservationDateTime/TimeOfAnEvent'] := '200202150730';
  obr.S['OrderingProvider(1)/IDnumber'] := '555-55-5555';
  obr.S['OrderingProvider(1)/Familyname/Surname'] := 'PRIMARY';
  obr.S['OrderingProvider(1)/Givenname'] := 'PATRICIA P';
  obr.S['OrderingProvider(1)/Degree'] := 'MD';
  obr.S['OrderingProvider(1)/Assigningauthority/NamespaceID'] :=
    'LEVEL SEVEN HEALTHCARE, INC.';
  obr.S['ResultStatus'] := 'F';
  obr.S['PrincipalResultInterpreter/OPName/IDNumber'] := '444-44-4444';
  obr.S['PrincipalResultInterpreter/OPName/FamilyName'] := 'HIPPOCRATES';
  obr.S['PrincipalResultInterpreter/OPName/GivenName'] := 'HOWARD H';
  obr.S['PrincipalResultInterpreter/OPName/Degree'] := 'MD';

  // OBX
  obx := msg.O['PATIENT_RESULT(1)/ORDER_OBSERVATION(1)/OBSERVATION(1)/OBX'];
  obx.S['SetIDOBX'] := '1';
  obx.S['ValueType'] := 'SN';
  obx.S['ObservationIdentifier/Identifier'] := '1554-5';
  obx.S['ObservationIdentifier/Text'] := 'GLUCOSE POST 12H CFST';
  obx.S['ObservationIdentifier/Nameofcodingsystem'] := 'LN';
  obx.S['Units/Identifier'] := 'mg/dl';
  obx.S['ReferencesRange'] := '70-105';
  obx.S['AbnormalFlags'] := 'H';
  obx.S['ObservationResultStatus'] := 'F';

  sn := TBSHL7Object.Create('SN', '251');
  sn.S['Num1'] := '182';
  obx.O['ObservationValue(1)'] := sn;

  // HL7 format
  AMemo.Lines.Append('Create Message with Path (Advanced)');
  if AXML then
    AMemo.Lines.Text := msg.AsXML
  else
    AMemo.Lines.Text := msg.AsHL7;

  msg.Free;
end;

procedure ParseMessageAdv(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsORU_R01_251;
  // Patient : TbsPN_251;
  OBSERVATION: TbsORU_R01_PATIENT_RESULT_ORDER_OBSERVATION_OBSERVATION_251;
  i: integer;
begin
  AMemo.Lines.Append('Message Parse (Advanced)');

  msg := TbsORU_R01_251.Create;
  // Parse message
  if AXML then
    msg.AsXML := MsgXmlORU_R01_251
  else
    msg.AsHL7 := MsgORU_R01_251;

  // Patient:=msg.PATIENT_RESULT[0].PATIENT.PID.PatientName;
  // Shows John
  // AMemo.Lines.Append('Patient Name : '+Patient.GivenName.AsString);

  // AMemo.Lines.Add( 'OBSERVATIONRepCount : ' + IntToStr(
  // msg.PATIENT_RESULT[0].ORDER_OBSERVATION[0].OBSERVATIONRepCount)
  // );
  //
  // for i := 0 to msg.PATIENT_RESULT[0].ORDER_OBSERVATION[0].OBSERVATIONRepCount-1 do
  // begin
  // observation := msg.PATIENT_RESULT[0].ORDER_OBSERVATION[0].OBSERVATION[i];
  // AMemo.Lines.Append(
  // observation.OBX.ObservationIdentifier.Text.AsString+#9#9+
  // observation.OBX.ObservationValue.AsString);
  // end;

  {
    OBSERVATIONRepCount : 21

    pH  7.600
    pO2  127
    pCO2  20.4
    Cl-  73
    K+  5.5
    Na+  125
    Glu  11.3
    Lac  10.0
    Ca++  0.36
    tHb  17.3
    sO2  .....
    O2Hb  -58.4
    COHb  110.4
    MetHb  -6.5
    tBil  .....
    T  37.0
    FIO2  21.0
    pH(T)  7.600
    pCO2(T)  20.4
    SBE  -1.5
    pO2(T)  127
  }
  FreeAndNil(msg);
end;

procedure ParseMessagePathAdv(AMemo: TMemo; AXML: Boolean);
var
  msg: TBSHL7Message;
  LArrayLen: integer;
begin
  AMemo.Lines.Append('Message Parse with Path (Advanced)');
  try
    msg := TBSHL7Message.Create('ORU_R01', '251');
    msg.AsHL7 := MsgORU_R01_251;

    AMemo.Lines.Append('Patient Name :' +
      msg.S['PATIENT_RESULT/PATIENT/PID/PatientName/FamilyName']);
    AMemo.Lines.Append('');

    AMemo.Lines.Append('PATIENT_RESULT/ORDER_OBSERVATION/OBSERVATION : ' +
      IntToStr(msg.ArrayLen['PATIENT_RESULT/ORDER_OBSERVATION/OBSERVATION']));

    for LArrayLen := 1 to msg.ArrayLen
      ['PATIENT_RESULT/ORDER_OBSERVATION/OBSERVATION'] do
    begin
      AMemo.Lines.Append
        (msg.S[Format
        ('PATIENT_RESULT/ORDER_OBSERVATION/OBSERVATION(%d)/OBX/ObservationIdentifier/Text',
        [LArrayLen])] + #9#9 + msg.S
        [Format('PATIENT_RESULT/ORDER_OBSERVATION/OBSERVATION(%d)/OBX/ObservationValue',
        [LArrayLen])]);
    end;

  finally
    msg.Free;
  end;
end;

procedure CreateCustomMessage(AMemo: TMemo; AXML: Boolean);
var
  LMsg: TBSZPI_Z01_251;
begin
  LMsg := TBSZPI_Z01_251.Create;
  try
    LMsg.ZAU.inscarrier1.AsString := 'AAA';
    LMsg.ZAU.preauthcd1.AsString := 'BBBB';

    if AXML then
      AMemo.Lines.Append(LMsg.AsXML)
    else
      AMemo.Lines.Append(LMsg.AsHL7);
  finally
    LMsg.Free;
  end;
end;

procedure CreateCustomMessageWithPath(AMemo: TMemo; AXML: Boolean);
var
  LMsg: TBSHL7Message;
begin
  if not BSHL7Library.Exists('ZPI_Z01', '251', 'BESA') then
    raise Exception.Create('Error Message');

  LMsg := TBSHL7Message.Create('ZPI_Z01', '251', 'BESA');
  try
    LMsg.S['ZAU/inscarrier1'] := 'aaaaaa';
    LMsg.S['ZAU/preauthcd1'] := 'BBBB';

    if AXML then
      AMemo.Lines.Append(LMsg.AsXML)
    else
      AMemo.Lines.Append(LMsg.AsHL7);
  finally
    LMsg.Free;
  end;
end;

procedure ParseCustomMessage(AMemo: TMemo);
begin
  //
end;

procedure ParseCustomMessageWithPath(AMemo: TMemo);
begin
  //
end;


procedure MessageCreate_ADT_A04(AMemo: TMemo; AXML: Boolean; nowTime:Tdatetime);
var
  msg: TbsADT_A04_251;
  famName: TbsFn_251;
begin
  try
    msg := TbsADT_A04_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString  := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := 'DEAN'; //

    famName := msg.PID.PatientName[0].FamilyName;;

    famName.Surname.AsString := 'JAMES';

    // msg.PID.PatientName[0].GivenName.AsString:='DEAN';
    // msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    msg.PID.PatientID.IDnumber.AsString := '98765';
    msg.PID.AdministrativeSex.Value := 'M';
    msg.PID.PatientDeathDateandTime.Time.Value := '';
    // msg.PID.PatientID.AsString:='123456';
    msg.PID.DateTimeOfBirth.Time.Value := '19010101';
    // AMemo.Lines.Append('Generate Message');

    msg.PV1.PatientClass.AsString := 'O'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value := '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A02(AMemo: TMemo; AXML: Boolean; nowTime:Tdatetime);
var
  msg: TbsADT_A02_251;
  famName: TbsFn_251;
  ppl: TbsPL_251;
  apl: TbsPL_251;

begin
  try
    msg := TbsADT_A02_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString :=  ma_PaEngName ;//'DEAN'; //

    famName := msg.PID.PatientName[0].FamilyName;;

    famName.Surname.AsString := ma_PaEngName ;// 'JAMES';
     msg.PID.PatientID.IDnumber.AsString := ma_chart;//'98765';
    msg.PID.AdministrativeSex.Value :=  juminToGender(ma_jumin);//'M';
    msg.PID.PatientDeathDateandTime.Time.Value := '';
     msg.PID.DateTimeOfBirth.Time.Value :=  juminToBirth(ma_jumin);//'19010101';

    msg.PV1.PatientClass.AsString := 'O'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value := formatDatetime('YYYYMMDDhhnnss', nowTime);//'20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .


    ppl := msg.PV1.PriorPatientLocation;
    ppl.Facility.NamespaceID.AsString := 'HUMAN';
    ppl.Building.AsString := 'K-TOWER';
    ppl.Floor.AsString := '0';
    ppl.Room.AsString := '002';
    ppl.BEd.AsString := '002-1';

    apl := msg.PV1.AssignedPatientLocation;
    apl.Facility.NamespaceID.AsString := 'HUMAN';
    apl.Building.AsString := 'K-TOWER';
    apl.Floor.AsString := '3';
    apl.Room.AsString := '302';
    apl.BEd.AsString := '302-1';

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A03(AMemo: TMemo; AXML: Boolean; nowTime:Tdatetime);
var
  msg: TbsADT_A03_251;
  famName: TbsFn_251;
begin
  try
    msg := TbsADT_A03_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := ma_PaEngName ;// 'DEAN'; //

    famName := msg.PID.PatientName[0].FamilyName;;

    famName.Surname.AsString :=  ma_PaEngName ;//'JAMES';
    msg.PID.PatientID.IDnumber.AsString := ma_chart;// '98765';
    msg.PID.AdministrativeSex.Value :=  juminToGender(ma_jumin);//'M';
    msg.PID.PatientDeathDateandTime.Time.Value := '';
    msg.PID.DateTimeOfBirth.Time.Value := juminToBirth(ma_jumin);// '19010101';

    msg.PV1.PatientClass.AsString := 'O'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value := formatDatetime('YYYYMMDDhhnnss', nowTime);// '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A01(AMemo: TMemo; AXML: Boolean;
    patAdmitKind:string; //외래 O 입원I  N: 해당없음
    nowTime:Tdatetime);
var
  msg: TbsADT_A01_251;
  famName: TbsFn_251;
begin
  try
    msg := TbsADT_A01_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString          := 'Sending';
    msg.MSH.Sequencenumber.AsString           :=   formatDatetime('YYYYMMDDhhnnss', nowTime);//'123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := ma_PaEngName ;//'을지'; //
    famName                                   := msg.PID.PatientName[0].FamilyName;
    famName.Surname.AsString                  := ma_PaEngName ;// '문덕';

    msg.PID.PatientID.IDnumber.AsString       := ma_chart;//'98765';
    msg.PID.AdministrativeSex.Value           := juminToGender(ma_jumin);//'M';
    msg.PID.PatientDeathDateandTime.Time.Value:= '';
    msg.PID.DateTimeOfBirth.Time.Value        := juminToBirth( ma_jumin);// '19010101';



    msg.PV1.PatientClass.AsString             := patAdmitKind;//'O'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value          :=  formatDatetime('YYYYMMDDhhnnss', nowTime); //   '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A05(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsADT_A05_251;
  famName: TbsFn_251;
begin
  try
    msg := TbsADT_A05_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := 'DEAN'; //

    famName := msg.PID.PatientName[0].FamilyName;;

    famName.Surname.AsString := 'JAMES';

    // msg.PID.PatientName[0].GivenName.AsString:='DEAN';
    // msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    msg.PID.PatientID.IDnumber.AsString := '98765';
    msg.PID.AdministrativeSex.Value := 'M';
    msg.PID.PatientDeathDateandTime.Time.Value := '';
    // msg.PID.PatientID.AsString:='123456';
    msg.PID.DateTimeOfBirth.Time.Value := '19010101';
    // AMemo.Lines.Append('Generate Message');

    msg.PV1.PatientClass.AsString := 'O'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value := '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A06(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsADT_A06_251;
  famName: TbsFn_251;
begin
  try
    msg := TbsADT_A06_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := 'DEAN'; //

    famName := msg.PID.PatientName[0].FamilyName;;

    famName.Surname.AsString := 'JAMES';

    // msg.PID.PatientName[0].GivenName.AsString:='DEAN';
    // msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    msg.PID.PatientID.IDnumber.AsString := '98765';
    msg.PID.AdministrativeSex.Value := 'M';
    msg.PID.PatientDeathDateandTime.Time.Value := '';
    // msg.PID.PatientID.AsString:='123456';
    msg.PID.DateTimeOfBirth.Time.Value := '19010101';
    // AMemo.Lines.Append('Generate Message');

    msg.PV1.PatientClass.AsString := 'I'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value := '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A07(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsADT_A07_251;
begin
  try
    msg := TbsADT_A07_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].FamilyName.AsString := '강감찬';
    msg.PID.PatientName[0].GivenName.AsString := '강감찬';
    // msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    msg.PID.PatientID.IDnumber.AsString := '98765';
    msg.PID.AdministrativeSex.Value := 'M';
    msg.PID.PatientID.AsString := '123456';
    msg.PID.DateTimeOfBirth.Time.Value := '19010101';
    // AMemo.Lines.Append('Generate Message');
    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A08(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsADT_A08_251;
  famName: TbsFn_251;
begin
  try
    msg := TbsADT_A08_251.Create;

    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := '을지'; //

    famName := msg.PID.PatientName[0].FamilyName;;

    famName.Surname.AsString := '문덕';

    // msg.PID.PatientName[0].GivenName.AsString:='DEAN';
    // msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    msg.PID.PatientID.IDnumber.AsString := '98765';
    msg.PID.AdministrativeSex.Value := 'M';
    msg.PID.PatientDeathDateandTime.Time.Value := '';
    // msg.PID.PatientID.AsString:='123456';
    msg.PID.DateTimeOfBirth.Time.Value := '19030512';
    // AMemo.Lines.Append('Generate Message');

    msg.PV1.PatientClass.AsString := 'I'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value := '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John
  finally
    msg.Free;
  end;

end;

procedure MessageCreate_ADT_A40(AMemo: TMemo; AXML: Boolean);
var
  msg: TbsADT_A40_251;
begin
  try
    msg := TbsADT_A40_251.Create;
    //
    // // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    msg.PATIENT_ID[0].AsString := '98765';

    //
    // // Populate the PID Segment
    // msg.PID.PatientName[0].FamilyName.AsString:='강감찬';
    // msg.PID.PatientName[0].GivenName.AsString:='강감찬';
    // //  msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    // msg.PID.PatientID.IdNumber.AsString :='98765';
    // msg.PID.AdministrativeSex.Value :='M';
    // msg.PID.PatientID.AsString:='123456';
    // msg.PID.DateTimeofBirth.Time.Value:='19010101';
    /// /    AMemo.Lines.Append('Generate Message');

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // // MSH|^~\&|||Sending|||||||||123
    // // PID|||123456||Doe^John

  finally
    msg.Free;
  end;

end;



procedure MessageCreate_ADT_A11(AMemo: TMemo;
    AXML: Boolean;
    patAdmitKind:string;
    nowTime:Tdatetime);
var
  msg: TbsADT_A11_251;
  famName: TbsFn_251;
begin
  try
    msg := TbsADT_A11_251.Create;

{    // Populate the MSH Segment
    msg.MSH.Sendingfacility.AsString := 'Sending';
    msg.MSH.Sequencenumber.AsString := '123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := 'DEAN'; //

    famName := msg.PID.PatientName[0].FamilyName;;

    famName.Surname.AsString := 'JAMES';

    // msg.PID.PatientName[0].GivenName.AsString:='DEAN';
    // msg.PID..pa .PatientIDInternalID[0] .IDNumber.AsString:='123456';
    msg.PID.PatientID.IDnumber.AsString := '98765';
    msg.PID.AdministrativeSex.Value := 'M';
    msg.PID.PatientDeathDateandTime.Time.Value := '';
    // msg.PID.PatientID.AsString:='123456';
    msg.PID.DateTimeOfBirth.Time.Value := '19010101';
    // AMemo.Lines.Append('Generate Message');

    msg.PV1.PatientClass.AsString := 'O'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value := '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John


}
    msg.MSH.Sendingfacility.AsString          := 'Sending';
    msg.MSH.Sequencenumber.AsString           :=  formatDatetime('YYYYMMDDhhnnss', nowTime);//'123';

    // Populate the PID Segment
    msg.PID.PatientName[0].GivenName.AsString := ma_PaEngName ;//'을지'; //
    famName                                   := msg.PID.PatientName[0].FamilyName;
    famName.Surname.AsString                  := ma_PaEngName ;// '문덕';

    msg.PID.PatientID.IDnumber.AsString       := ma_chart;//'98765';
    msg.PID.AdministrativeSex.Value           := juminToGender(ma_jumin);//'M';
    msg.PID.PatientDeathDateandTime.Time.Value:= '';
    msg.PID.DateTimeOfBirth.Time.Value        := juminToBirth( ma_jumin);// '19010101';



    msg.PV1.PatientClass.AsString             := patAdmitKind;//'O'; // 외래 O 입원I
    msg.PV1.AdmitDateTime.Time.Value          := formatDatetime('YYYYMMDDhhnnss', nowTime); //   '20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .   sKey;//

    if AXML then
      AMemo.Lines.Append(msg.AsXML)
    else
      AMemo.Lines.Append(msg.AsHL7);
    // MSH|^~\&|||Sending|||||||||123
    // PID|||123456||Doe^John

  finally
    msg.Free;
  end;

end;





procedure MessageCreate_OMG_019(
      AMemo: TMemo;
      AXML: Boolean;
      nowTime   : Tdatetime;
      aOrderNO  : string;
      groupCode : string;
      groupName : string;
      aEngDoctorName  :string;
      aEngHospitalName:string;
      seqNo : string;
      aReasonForStudy : string;  //ToDO : 검사메모 - 검사별로 보내야 한다.
      aClinicalInfo : string;    //ToDO : Doctor's Note
      isCancel : boolean);
var
  msg: TbsOMG_O19_251;
  // msg : TbsORU_R01_251;


  //OBR-16, ORC-13

  MSH: TbsMSH_251;
  PID: TbsPID_251;
  obr: TbsOBR_251;
  obx: TbsOBX_251;
  orc: TbsORC_251;
  PV1: TbsPV1_251;

  sn: TbsSN_251;
  ed: TbsED_251;
  orderNo: TBsEI_251;
  EnterLocation : TBsPl_251;

  TQ_1: TBsTQ1_251;
  T1q: TBSCQ_251;
  nowDate : TDateTime;

  Rfs: TbsST_251;  //reason For Study
begin
  msg := TbsOMG_O19_251.Create;

  // MSH
  MSH := msg.MSH;
  MSH.SendingApplication.NamespaceID.AsString         := 'HEMR LAB';
  MSH.Sendingfacility.NamespaceID.AsString            := 'HEMR-2018';
  MSH.ReceivingApplication.NamespaceID.AsString       := 'HIM RIS';
  MSH.ReceivingFacility.NamespaceID.AsString          := 'HIM FAC1';
  MSH.DateTimeOfMessage.Time.AsString                 := formatDatetime('YYYYMMDDhhnnss', nowTime);
                                                         // '20180731101010';
  MSH.MessageControlID.AsString                       := 'HIM CNTRL-0001';

  nowDate := nowTime;// now;
  // PID
  PID := msg.PATIENT.PID; // .PATIENT_RESULT[0].PATIENT.PID;

  // pid.PatientIdentifierList[0].ID.AsString:='555-44-4444';
//  pid.PatientIdentifierList[0].i .AsString := ma_chart;
//  PID.PatientIdentifierList[0].AsString := ma_chart;//'89098999';
  PID.PatientID.IDnumber.AsString                      := ma_chart;
  PID.PatientName[0].FamilyName.Surname.AsString       := '';// 'MRS.';
  PID.PatientName[0].GivenName.AsString                := ma_paEngName;// 'EVE';
  PID.PatientName[0].Secondandfurthergivennamesorinitialsthereof.AsString
                                                       := '';// 'E';
  PID.PatientName[0].Nametypecode.AsString             := '';//'L';
  PID.MothersMaidenName[0].FamilyName.Surname.AsString :=  ma_paEngName;//'JONES';
  PID.DateTimeOfBirth.Time.AsString                    :=  juminToBirth(ma_jumin);// '196203520'; // .TimeOfAnEvent.AsString
  PID.AdministrativeSex.AsString                       :=  juminToGender(ma_jumin);//'F';
  PID.PatientAddress[0].Streetaddress.Streetormailingaddress.AsString
                                                       := configValue.varEngAdd1;// '621 GANGNAMDAERO.';
  PID.PatientAddress[0].City.AsString                  :=  configValue.varEngAdd3;   //'SEOUL-SI';
  PID.PatientAddress[0].Stateorprovince.AsString       := configValue.varEngAdd2;//'SEOCHO-GU';
  PID.PatientAddress[0].Ziporpostalcode.AsString       := configValue.varZip; //'06524';
  PID.PhoneNumberHome[0].Telephonenumber.AsString      := configValue.varTel1;// '(02)512-6695';
  PID.PhoneNumberBusiness[0].Telephonenumber.AsString  := configValue.varTel2;//'(02)512-6646';

  // OBR
  obr := msg.ORDER[0].obr; // .O PATIENT_RESULT[0].ORDER_OBSERVATION[0].OBR;
  obr.SetIDOBR.AsString                                := seqNo;// '1';
  obr.ProcedureCode.Identifier.AsString                := trim(groupCode);// '+AMRANEL'; // Group Code
  obr.PlacerOrderNumber.Entityidentifier.AsString      := aOrderNO;      //'845439';
  obr.OrderingProvider[0].FamilyName.Surname.AsString  := aEngDoctorName;//'Dr.Example';

//  obr.RelevantClinicalInformation.AsString            := groupName;             //'This is Acquisition Remark';
  obr.PlacerField1.AsString                            := groupName;             //'This is Acquisition Remark';

//  obr.ReasonforStudy[0]. .AsString                      := 'Sended ReasonforStudy' ;
  Rfs  := obr.ReasonforStudy[0].Text;
  Rfs.AsString                                        := aReasonForStudy;// 'Sended ReasonforStudy' ;

  obr.RelevantClinicalInformation.AsString            := aClinicalInfo;//'Sended RelevantClinicalInformation' ;
  //Referring Physician과 Department
  //obr.Technician



   MSG.PATIENT.PATIENT_VISIT.PV1.PatientClass.AsString := 'O'; // 외래 O 입원I
   MSG.PATIENT.PATIENT_VISIT.PV1.AdmitDateTime.Time.Value
          := formatdatetime('YYYYMMDDHHNNSS', nowDate);//'20180101120201';
    // 외래 입원  ==>? 다시 보낼때 업데이트 admindate가 키다 .


  // ORC
  orc := msg.ORDER[0].orc; // .PATIENT_RESULT[0].ORDER_OBSERVATION[0].OBR
  orderNo := orc.PlacerOrderNumber;
  orderNo.Entityidentifier.AsString := aOrderNO;// '9999999'; // ToDo : OrderNumber  KEY

  EnterLocation := orc.EnterersLocation;

  EnterLocation.Building.AsString := aEngHospitalName;//'Human Imaging Center';


  if  isCancel =false then
      orc.OrderControl.AsString := 'NW'
  else
      orc.OrderControl.AsString := 'CA';
  //Codes like "NW" (new order) and
            // "CA" (cancel order request) are used to initiate an event .

  orc.OrderEffectiveDateTime.Time.AsString := formatdatetime('YYYYMMDDHHNNSS', nowDate);
  orc.EnteringOrganization.Text.AsString   := ma_referHospCode;

//  orc.



  TQ_1 := msg.ORDER[0].TIMING[0].TQ1; // .TQ1;// TBsTQ_251.Create;
  TQ_1.SetIDTQ1.AsString :=  seqNo;// '1';



  T1q := TQ_1.Quantity;
  T1q.Quantity.AsString := '1';

  // T1stm := TQ_1.Startdatetime ;
  TQ_1.Startdatetime.Time.Value := formatdatetime('YYYYMMDDHHNNSS', nowDate);
  TQ_1.Priority[0].Identifier.AsString := 'R'; // grnaral
  TQ_1.Textinstruction.AsString := utf8string('Textinstruction');


//  OBR-16, ORC-13

  if AXML then
    AMemo.Lines.Text := msg.AsXML
  else
    AMemo.Lines.Text := msg.AsHL7;

  msg.Free;

end;


procedure ParseMessage_OMG_019(AMemo: TMemo; AXML: Boolean);
const
  MsgOMG_O19_251=
            'MSH|^~\&|HRIS||||20180808214048.421+0900||OMG^O19^OMG_O19|5601|P|2.5.1|20180808214048426'+ #13 +
            'PID||111111|||PATIENT^NAME|MOTHER^NAME|20100101000000+0900|M|||&   ADDRESS  |KOR|111-1111-1111||||||99999999||||BIRTH PLACE||1'+ #13 +            'PV1||O|^   ASSIGNED PATIENT LOCATION ASSIGNED PATIENT LOCATION|R||^   PRIOR PATIENT LOCATION PRIOR PATIENT LOCATION|^()^DR.AAA|^^() DR BBB|^^() DR CCC|MED||||2|A0||^^() DR DDD||VN001'+ #13 +            'ORC||PROC_001|||A||||||||||20180626000000+0900'+ #13 +            'OBR||||||||||||||||||||||||||||||||||||||||||||PROC_001' ;
var
  msg: TbsOMG_O19_251;
  MSH: TbsMSH_251;
  PID: TbsPID_251;
  obr: TbsOBR_251;
  obx: TbsOBX_251;
  orc: TbsORC_251;

  sn: TbsSN_251;
  ed: TbsED_251;
  orderNo: TBsEI_251;
  TQ_1: TBsTQ1_251;
  T1q: TBSCQ_251;
    ASending, ASeq, AFName, AGName, AIDNumber: string;
  AOrderString: string;
begin

{  MsgADT_A01_251 = 'MSH|^~\&|    |Sending|||20170609200200         ||ADT^A01||P|2.2|123' + #13
                    'MSH|^~\&|HRIS|       |||20180808214048.421+0900||OMG^O19^OMG_O19|5601|P|2.5.1|20180808214048426'+ #13 +

+ 'EVN|' + #13 + 'PID|||123456||Doe^John' + #13 + 'PV1|' + #13 + #10;
}


  try
    msg := TbsOMG_O19_251.Create;
    msg.AsHL7 :=AMemo.Text;   //  MsgOMG_O19_251 ;//


//    // Get the Sendingfacility value
    ASending := msg.MSH.Sendingfacility.AsString; // Sending
    ASeq := msg.MSH.Sequencenumber.AsString; // 123;
//
//
    PID := msg.PATIENT.PID; // .PATIENT_RESULT[0].PATIENT.PID;
////    // Access the PID Segment
//    AFName := PID.PatientName[0].FamilyName.Surname.AsString; // Doe
//    AGName := PID.PatientName[0].GivenName .AsString; // John
    // AIDnumber:=msg.PID.PatientIDInternalID[0].IDNumber.AsString;
    AIDNumber := PID.PatientID.AsString; // 123456

    Orc:= msg.ORDER[0].ORC;

    AOrderString := Orc.OrderStatus.AsString;
   // msg.AsHL7 := MsgOMG_O19_251;
//
    AMemo.Lines.Append('Parse Message');
    AMemo.Lines.Append('Family Name :' + AFName);
    AMemo.Lines.Append('Given Name :' + AGName);
    AMemo.Lines.Append('ID Number :' + AIDNumber);
    AMemo.Lines.Append('AOrderString :' + AOrderString);
  finally
    msg.Free;
  end;
end;
 {A	Some, but not all, results available
CA	Order was canceled
CM	Order is completed
DC	Order was discontinued
ER	Error, order not found
HD	Order is on hold
IP	In process, unspecified
RP	Order has been replaced
SC	In process, scheduled
}

procedure ParseMessage_ReadHeader(AMemo: TMemo; AXML: Boolean);
const
  Header  =
       'MSH|^~\&|HRIS||||20180808214048.421+0900||OMG^O19^OMG_O19|5601|P|2.5.1|20180808214048426';
var
  msg: TbsADT_A01_251;
  ASending, ASeq, AFName, AGName, AIDNumber: string;

  SendingApplication,
  MessageControlID,
  MessageType,
  ReceivingApplication,
  SendingFacility : string;
begin

{  MsgADT_A01_251 = 'MSH|^~\&|    |Sending|||20170609200200         ||ADT^A01||P|2.2|123' + #13
                    'MSH|^~\&|HRIS|       |||20180808214048.421+0900||OMG^O19^OMG_O19|5601|P|2.5.1|20180808214048426'+ #13 +

+ 'EVN|' + #13 + 'PID|||123456||Doe^John' + #13 + 'PV1|' + #13 + #10;
}



  try
    msg := TbsADT_A01_251.Create;
    msg.AsHL7 := Header;
//    SendingApplication   := msg.MSH.SendingApplication
//    SendingFacility      := msg.MSH.SendingFacility.AsString;

//    ReceivingApplication := msg.MSH.ReceivingApplication.AsString;

    //      MessageType          := msg.MSH.MessageType. .MessageType;// .AsString;
      MessageControlID     := msg.MSH.MessageControlID.AsString;
   //   msg.MSH.SendingApplication.

     MessageType:=  msg.MSH.MessageType.MessageStructure.AsString; //OMG_O19

     MessageType:=  msg.MSH.MessageType.MessageCode.AsString; // 'OMG'
     MessageType := msg.MSH.MessageType.TriggerEvent.AsString;   // //O19
      AMemo.Lines.Append('SendingApplication : '+  SendingApplication);
      AMemo.Lines.Append('MessageControlID : '+ MessageControlID);
      AMemo.Lines.Append('MessageType : '+ MessageType);
      AMemo.Lines.Append('ReceivingApplication : '+ ReceivingApplication);
      AMemo.Lines.Append('SendingFacility  : '+ SendingFacility);

                                           //OMG^O19^OMG_O19


  finally
    msg.Free;
  end;

end;


function Parse_ReadHeader(header : ansistring) : TParseValue;
var
  msg: TbsADT_A01_251;
begin


  try
     msg := TbsADT_A01_251.Create;
     msg.AsHL7 := Header;
     //OMG^O19^OMG_O19
     result.MessageControlID     :=  msg.MSH.MessageControlID.AsString;
     result.MessageCode          :=  msg.MSH.MessageType.MessageCode.AsString;      //OMG
     result.TriggerEvent         :=  msg.MSH.MessageType.TriggerEvent.AsString;     //O19
     result.MessageStructure     :=  msg.MSH.MessageType.MessageStructure.AsString; //OMG_O19

  finally
    msg.Free;
  end;

end;


function Parse_OMG_019(header : ansistring) : TParseValue_OMG;
var
      msg: TbsOMG_O19_251;
      MSH: TbsMSH_251;
      PID: TbsPID_251;
      obr: TbsOBR_251;
      obx: TbsOBX_251;
      orc: TbsORC_251;
      sn: TbsSN_251;
      ed: TbsED_251;
      orderNo: TBsEI_251;
      TQ_1: TBsTQ1_251;
      T1q: TBSCQ_251;
      ASending, ASeq, AFName, AGName, AIDNumber: ansistring;
      AOrderString: string;
begin
  try
    msg := TbsOMG_O19_251.Create;



    msg.AsHL7 :=  Header;

    PID       := msg.PATIENT.PID;// PATIENT_RESULT[0].PATIENT.PID;

    AIDNumber := PID.PatientID.AsString;//
    Orc := msg.ORDER[0].ORC;

    AOrderString := Orc.OrderStatus.AsString;

    result.patID             :=  AIDNumber;
    result.modality          :=  '';
    result.patStatus         :=  AOrderString ;

  finally
//    msg.Free;
  end;
end;
 {A	Some, but not all, results available
CA	Order was canceled
CM	Order is completed
DC	Order was discontinued
ER	Error, order not found
HD	Order is on hold
IP	In process, unspecified
RP	Order has been replaced
SC	In process, scheduled
}


end.
