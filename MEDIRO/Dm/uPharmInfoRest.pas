unit uPharmInfoRest;

interface

uses
  System.SysUtils, System.Classes, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, REST.Response.Adapter, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Datasnap.DBClient, FireDAC.Stan.StorageBin,
  FireDAC.Stan.StorageJSON;

type
  TdmPharmInfoRest_f = class(TDataModule)
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    FDMemTable2: TFDMemTable;
  private
    { Private declarations }


  public
    { Public declarations }
        procedure  SearchPharm(
              mdsCd,                  //��ǰ�ڵ�
              itmNm,                  //ǰ���
              mnfEntpNm: string;      //������ü��
               pageno: string='1';    //������ ��ȣ
               numOfRows: string='10'); //�������� �����
       procedure SearchCat(
            mdsCd,                  //��ǰ�ڵ�
            itmNm,                  //ǰ���
            mnfEntpNm: string;      //������ü��
            impEntpNm: string;      //���Ծ�ü��
            pageno: string='1';    //������ ��ȣ
            numOfRows: string='10'); //�������� �����
  end;

var
  dmPharmInfoRest_f: TdmPharmInfoRest_f;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPharmInfoRest_f.SearchPharm(
      mdsCd,                  //��ǰ�ڵ�
      itmNm,                  //ǰ���
      mnfEntpNm: string;      //������ü��
      pageno: string='1';    //������ ��ȣ
      numOfRows: string='10'); //�������� �����
begin


    RESTRequest1.Params.ParameterByName('ServiceKey').Value      :=
     '7BQrtAMsjWPll1N7ncrG4VMjqsXAiryruQmqTHrb2BcVc%2BDHeWEYBCns7kUEwyKFS69Y2pUr9Ydj4JT8ABTw%2BA%3D%3D';
    RESTRequest1.Params.ParameterByName('mdsCd').Value      := mdsCd;
    RESTRequest1.Params.ParameterByName('itmNm').Value      := itmNm;
    RESTRequest1.Params.ParameterByName('mnfEntpNm').Value  := mnfEntpNm;
    RESTRequest1.Params.ParameterByName('pageno').Value     := pageno;
    RESTRequest1.Params.ParameterByName('numOfRows').Value  := numOfRows;
    RESTRequest1.Execute;

end;


procedure TdmPharmInfoRest_f.SearchCat(
      mdsCd,                   //��ǰ�ڵ�
      itmNm,                   //ǰ���
      mnfEntpNm: string;       //������ü��
      impEntpNm: string;       //������ü��
      pageno: string='1';      //������ ��ȣ
      numOfRows: string='10'); //�������� �����
begin
  //  RESTRequest2.Client := RESTClient2;

    RESTRequest2.Params.ParameterByName('ServiceKey').Value      :=
     '7BQrtAMsjWPll1N7ncrG4VMjqsXAiryruQmqTHrb2BcVc%2BDHeWEYBCns7kUEwyKFS69Y2pUr9Ydj4JT8ABTw%2BA%3D%3D';
    RESTRequest2.Params.ParameterByName('mcatCd').Value      := mdsCd;
    RESTRequest2.Params.ParameterByName('itmNm').Value      := itmNm;
    RESTRequest2.Params.ParameterByName('mnfEntpNm').Value  := mnfEntpNm;  //������ü��
    RESTRequest2.Params.ParameterByName('impEntpNm').Value  := impEntpNm;  //���Ծ�ü��

    RESTRequest2.Params.ParameterByName('pageno').Value     := pageno;
    RESTRequest2.Params.ParameterByName('numOfRows').Value  := numOfRows;
    RESTRequest2.Execute;

end;


     //response.body.items.item

end.

adtStaDd
gnlNmCd
injcPthNm
itmNm
lprcEssAddcCuprc
lprcEssTpNm
mdsCd
meftDivNo
mnfEntpNm
mxCprc
nomNm
payTpNm
spcGnlTpNm
unit

