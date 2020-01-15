unit uReferHospPatList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, FormSize, Vcl.StdCtrls,
  Vcl.ComCtrls, uReferHospPatListFrame;

type
  TreferHospPatList_f = class(TForm)
    Panel2: TPanel;
    FormSize1: TFormSize;
    btnClose: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

     procedure  LoadFrame;
   end;

var
  referHospPatList_f: TreferHospPatList_f;
  ReferHospPatListFrame_fr1: TReferHospPatListFrame_fr;

implementation
{$R *.dfm}

procedure TreferHospPatList_f.LoadFrame;
// var
// gogekalretFrame_fr : TgogekalretFrame_fr;
// ���� ������ �����ϴ� �� ���ٴ� class�� ��� ������ �����ϴ� ����
// // ���� �� �մϴ�.
begin

  ReferHospPatListFrame_fr1 := TReferHospPatListFrame_fr.Create(Self);


  with ReferHospPatListFrame_fr1 do
  begin
         Parent := referHospPatList_f;
       align:= alClient;
       Preshow;
       searchRequestList(1, formatdatetime('YYYY-MM-DD', now-10),
                                          formatdatetime('YYYY-MM-DD', now));

//     searchRequestList(1, formatDatetime('YYYY-MM-DD', dt1.Datetime),
//                        formatDatetime('YYYY-MM-DD', dt2.Datetime) );    //�˻� �Ƿ��ڸ� ����.

  end;
end;

procedure TreferHospPatList_f.btnCloseClick(Sender: TObject);
begin
     close;
end;

procedure TreferHospPatList_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       Action := caFree;
end;



procedure TreferHospPatList_f.FormDestroy(Sender: TObject);
begin
      referHospPatList_f := nil;
end;

procedure TreferHospPatList_f.FormShow(Sender: TObject);
begin
     caption:= '�������� �˻��û ����';
end;

end.
