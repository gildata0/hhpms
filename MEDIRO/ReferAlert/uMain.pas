unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  Vcl.ComCtrls,
  Vcl.ExtCtrls, AdvEdit, Vcl.OleServer, SMSCALLLib_TLB;

type
  Tmain_f = class(TForm)
    Button1: TButton;
    SMSCALLMSG1: TSMSCALLMSG;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_f: Tmain_f;

implementation
uses  uDM,    uFunctions, uConfig, uGogekData, uReferHospPatList;


{$R *.dfm}

procedure Tmain_f.Button1Click(Sender: TObject);
begin
  if not Assigned(referHospPatList_f) then
    referHospPatList_f := TreferHospPatList_f.Create(application);
  referHospPatList_f.searchRequestList(0, formatdatetime('YYYY-MM-DD', now));
  if referHospPatList_f.ShowModal = mrOk then
  begin

    isReferer := true;  //지금 의뢰환자를 처리하고 있다.

 //   main_f.SearChname(main_f.edtname.Text);
    // main_f.edtJumin.SetFocus;
  end;

end;

procedure Tmain_f.FormCreate(Sender: TObject);
begin
     if loadini = true then
     begin


     //   configvalue := Tconfigvalue.Create;
        configvalue.LoadGlobalData_ini;  //ini정보를 열자.
    end;

     if dm_f.ConnectDatabase(configvalue.varDbip,
          configvalue.varDbname,
          configvalue.varDbuser,
          configvalue.varDbpass,
          configvalue.varDbProtocol,
          configvalue.varDbPort) = true then
     begin
           //serverkind := 0;
           configvalue.LoadGlobalData_db;
           configvalue.LoadQueryFunc(configvalue.varDbProtocol);

         {$IFNDEF DEBUG}
//             if dm_f.ConnectDatabase_BIT(configvalue.varImageIp,
//                  'DrBITPACK',
//                  'sa',
//                  'bit',
//                  'mssql',
//                  51983) = true then
//             begin
//
//             end
//             else
//             begin
//                    showmessage('BIT conn check.'+#10+#13+configvalue.varImageIp);
//             end;
         {$ENDIF DEBUG}





     end;


end;

end.
