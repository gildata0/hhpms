unit changeChart;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls;

type
     TchangeChart_f = class(TForm)
          Label1: TLabel;
          edtChart1: TEdit;
          Label2: TLabel;
          edtChart2: TEdit;
          Button1: TButton;
          Button2: TButton;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure Button1Click(Sender: TObject);
     private
    { Private declarations }
          procedure ChangeChartNo(varChart1: string; varChart2: string);
          procedure LogWrite(Stime: string; Contents: string);
     public
    { Public declarations }
     end;

var
     changeChart_f: TchangeChart_f;

implementation

uses dm;

{$R *.dfm}

procedure TchangeChart_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     acTion := caFree;
end;

procedure TchangeChart_f.FormDestroy(Sender: TObject);
begin
     changeChart_f := nil;
end;

procedure TchangeChart_f.FormShow(Sender: TObject);
begin
     caption := '차트번호 변경';

end;

procedure TchangeChart_f.ChangeChartNo(varChart1: string; varChart2: string);
begin

     try
          dm_f.zConnection1.StartTransaction;
          with dm_f.sqlWork do
          begin
               close;
               sql.Clear;
               sql.Add('update injek set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update jinryo_p set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update jinryo_s set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update jinryo_o set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update injek set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update jakyuk set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update refer_view set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update chart_s set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update chart_m set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update chart_p set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update sunap set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update sunapbibo set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update dtx set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update hxCc set');
               sql.Add('ccchart=:chart2');
               sql.Add('where ccchart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update hxDent set');
               sql.Add('Dchart=:chart2');
               sql.Add('where Dchart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update hxDesire set');
               sql.Add('Dschart=:chart2');
               sql.Add('where Dschart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update HxMed set');
               sql.Add('Medchart=:chart2');
               sql.Add('where Medchart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update hxSremark set');
               sql.Add('Srchart=:chart2');
               sql.Add('where Srchart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update tpCharge set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update wonwe_p set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update newon set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update signdata set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update docSignHistory set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update chart_i set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update dxHx set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update hrAuthinfo set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update chk_list set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               close;
               sql.Clear;
               sql.Add('update vipCard set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update sunapMf set');
               sql.Add('chart=:chart2');
               sql.Add('where chart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update yeyak set');
               sql.Add('Ychartno=:chart2');
               sql.Add('where YchartNo=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update yeyak set');
               sql.Add('Ychartno=:chart2');
               sql.Add('where YchartNo=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update yRecall set');
               sql.Add('rcChart=:chart2');
               sql.Add('where rcChart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;

               close;
               sql.Clear;
               sql.Add('update yBlock set');
               sql.Add('yChart=:chart2');
               sql.Add('where yChart=:chart1');
               paramByName('chart1').asString := varChart1;
               paramByName('chart2').asString := varChart2;
               execSql;


               dm_f.zConnection1.Commit;
          end;
     except
          on E: Exception do
          begin

               dm_f.zConnection1.Rollback;
               showmessage('[다모음아이 차트번호 변경 오류]' + E.Message);
               LogWrite(FormatDateTime('YYYYMMDD-HHMMSS', now), '[다모음아이 차트번호 변경 오류]' + E.Message);
          end;
     end;

     try
          with dm_f.sqlPat do
          begin
               close;
               sql.Clear;
               sql.Add('update patientInfo set');
               sql.Add('chartno=:chart2');
               sql.Add('where chartno=:chart1');
               parameters.paramByName('chart1').Value := varChart1;
               parameters.paramByName('chart2').value := varChart2;
               execSql;
          end;
     except
          on E: Exception do
          begin

               showmessage('[이지덴트 환자정보 차트번호 변경 오류]' + E.Message);
               LogWrite(FormatDateTime('YYYYMMDD-HHMMSS', now), '[이지덴트 환자정보 차트번호 변경 오류]' + E.Message);
          end;
     end;

     try
          with dm_f.sqlImg do
          begin
               close;
               sql.Clear;
               sql.Add('update ImageInfo set');
               sql.Add('chartno=:chart2');
               sql.Add('where chartno=:chart1');
               parameters.paramByName('chart1').value := varChart1;
               parameters.paramByName('chart2').value := varChart2;
               execSql;
          end;
     except
          on E: Exception do
          begin

               showmessage('[이지덴트 이미지정보 차트번호 변경 오류]' + E.Message);
               LogWrite(FormatDateTime('YYYYMMDD-HHMMSS', now), '[이지덴트 이미지정보 차트번호 변경 오류]' + E.Message);
          end;
     end;


end;

procedure TchangeChart_f.Button1Click(Sender: TObject);
begin
     ChangeChartNo(edtChart1.text, edtChart2.text);
end;

procedure TchangeChart_f.LogWrite(Stime: string; Contents: string);
var
     stFileText: TStringList;
begin

     stFileText := TStringList.Create;
     if FileExists(ExtractFileDir(application.exename) + '\Prm.Log') then begin
          stFileText.LoadFromFile(ExtractFileDir(application.exename) + '\Prm.Log');
          stFileText.Insert(0, Stime + '>>' + Contents);
          stFileText.SaveToFile(ExtractFileDir(application.exename) + '\Prm.Log');
     end
     else begin
          stFileText.Insert(0, Stime + '>>' + Contents);
          stFileText.SaveToFile(ExtractFileDir(application.exename) + '\Prm.Log');
     end;
end;

end.

