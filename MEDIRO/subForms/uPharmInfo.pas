unit uPharmInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.ExtCtrls, AdvPanel, FormSize, Vcl.StdCtrls;

type
  TPharmInfo_f = class(TForm)
    grdPharm: TAdvStringGrid;
    Panel1: TAdvPanel;
    Panel2: TAdvPanel;
    FormSize1: TFormSize;
    Button1: TButton;
    Edit1: TEdit;
    cbKind: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadDrugInfoFromAPI(
       kind : integer; //0: 약품 1: 재료
       mdsCd,                  //약품코드
       itmNm,                  //품목명
       mnfEntpNm: string;      //제조업체명
       infEntpNm: string;      //수입업체명
       pageno: string='1';     //페이지 번호
       numOfRows: string='10');

  end;

var
  PharmInfo_f: TPharmInfo_f;


implementation
uses uPharmInfoRest, uFormInit;
{$R *.dfm}

procedure TPharmInfo_f.Button1Click(Sender: TObject);
begin
     LoadDrugInfoFromAPI(cbKind.ItemIndex, edit1.text,'','','');////sugaCode,'','');
end;

procedure TPharmInfo_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:=cafree;
end;

procedure TPharmInfo_f.FormCreate(Sender: TObject);
begin
    grdPharm.Align := alClient;
    initAdvGrid(grdPharm);

end;

procedure TPharmInfo_f.FormDestroy(Sender: TObject);
begin
      PharmInfo_f := nil;
end;

procedure TPharmInfo_f.FormShow(Sender: TObject);
begin
      caption:='의약품 정보';
end;

procedure TPharmInfo_f.LoadDrugInfoFromAPI(
       kind : integer; //0: 약품 1: 재료
       mdsCd,                  //약품코드
       itmNm,                  //품목명
       mnfEntpNm: string;      //제조업체명
       infEntpNm: string;      //수입업체명
       pageno: string='1';     //페이지 번호
       numOfRows: string='10');
var
    nFieldCnt : integer;
    i, j:integer;
 begin

    // i := 0;
    // RESTResponseDataSetAdapter1 FieldDefs 에서 ftString 의 길이를 키워줘라.  2000

     try
      dmPharmInfoRest_f := TdmPharmInfoRest_f.Create(nil);
     case kind of

     0:
      dmPharmInfoRest_f.SearchPharm(
         mdsCd,                  //약품코드
         itmNm,                  //품목명
         mnfEntpNm,      //제조업체명
         pageno,    //페이지 번호
         numOfRows);
       1:
      dmPharmInfoRest_f.SearchCat(
         mdsCd,                  //재료코드
         itmNm,                  //품목명
         mnfEntpNm,      //제조업체명
         infEntpNm,      //수입업체명
         pageno,    //페이지 번호
         numOfRows);

       end;

        nFieldCnt := dmPharmInfoRest_f.FDMemTable1.FieldCount;

//        pharmInfo_f:= TpharmInfo_f.create(nil);
//        pharmInfo_f.Show;

        dmPharmInfoRest_f.fdmemtable1.first;
        i:= 1;
        pharmInfo_f.grdPharm.Rowcount :=   dmPharmInfoRest_f.fdmemtable1.recordCount + 1;
        pharmInfo_f.grdPharm.ColCount :=   nFieldCnt + 1;

          while not dmPharmInfoRest_f.fdmemtable1.eof do
          begin
                 for j := 0 to nFieldCnt-1 do
                 begin

                     pharmInfo_f.grdPharm.Cells[j+1, i] := dmPharmInfoRest_f.fdmemtable1.fields[j].AsString;
                 //  aName := dmPharmInfoRest_f.fdmemtable1.fieldbyname('resultCode').asString;
                 end;
                 i := i + 1;
            dmPharmInfoRest_f.fdmemtable1.next;
          end;

          pharmInfo_f.grdPharm.autonumbercol(0);


    finally
        dmPharmInfoRest_f.Free;
    end;
end;

end.
