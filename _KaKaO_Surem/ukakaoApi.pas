unit ukakaoApi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JSON, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses uDm;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var
  i          : Integer;
  aa, bb     : TJSONArray;
  datajson   : TJSONObject;
  SourceJSON      : TJSONObject;
  buttonJSON_WL   : TJSONObject;
  buttonJSON_DS   : TJSONObject;
  jsResponse: TJSONValue;
begin
  if not Assigned( SourceJSON ) then
    FreeAndNil( SourceJSON );
  SourceJSON := TJSONObject.Create;

  SourceJSON.AddPair('usercode',    'human');
  SourceJSON.AddPair('deptcode',    'OV-JJG-9R');
  SourceJSON.AddPair('yellowid_key','899f63a5331c9df40e2b10c60a1d575c344b2a3d');// 'c237a9af6fa2d28ea0049bb7b26e0d863e8d93c2');


  datajson := TJSONObject.Create;
  aa := TJSONArray.Create;

//  for i := 1 to 10 do
//  begin
//  datajson.AddPair('type','ft') ;
  datajson.AddPair('message_id','1000003');
  datajson.AddPair('to', '821040851199'); //'821049949934');
  datajson.AddPair('text' , '최은영님, 안녕하세요. 휴먼영상의학과입니다.');//'변졍윤님, 안녕하세요. 휴먼영상의학과입니다.');
  datajson.AddPair('from' , '0230143601');
  datajson.AddPair('template_code' , '휴먼_001');
  datajson.AddPair('reserved_time' , '');// '209912310000');
  datajson.AddPair('re_send' ,  'N');//'R(or Y)');
  datajson.AddPair('re_text' , '알림톡 대체 메시지입니다.');

      bb := TJSONArray.Create;
      buttonJSON_WL := TJSONObject.Create;
      buttonJSON_DS := TJSONObject.Create;

       buttonJSON_WL.AddPair('button_type' , 'WL');
       buttonJSON_WL.AddPair('button_name' , '휴먼영상의학과바로가기');
       buttonJSON_WL.AddPair('button_url' , 'https://humic.co.kr/');
       bb.AddElement(buttonJSON_WL);

       buttonJSON_DS.AddPair('button_type' , 'DS');
       buttonJSON_DS.AddPair('button_name' , '예약조회');
       bb.AddElement(buttonJSON_DS);

       datajson.AddPair('buttons', bb);
  aa.AddElement(datajson);
//  end;

  SourceJSON.AddPair('messages', aa );



  udm.DataModule1.RESTRequest1.AddBody(SourceJSON);

  udm.DataModule1.RESTRequest1.Execute();
  jsResponse := udm.DataModule1.RESTResponse1.JSONValue;

  Memo1.Lines.Text := jsResponse.ToString;

  SourceJSON.Free;
//  datajson.Free;
//  aa.Free;
//  bb.Free;
//  buttonJSON_WL.Free;
//  buttonJSON_Ds.Free;
//  Memo1.Lines.Add( format('Size = %d',[SourceJSON.Size]) );
end;

end.
