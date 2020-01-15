unit uHxJiinryo_p;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.ExtCtrls, AdvPanel, Vcl.StdCtrls, Vcl.CheckLst, FormSize;


type
     TmisuInfo = packed record
          misunamEk: integer;
          card: integer;
          hyun: integer;
          tong: integer;
     end;
type
  THxJiinryo_p_f = class(TForm)
    pnlNewon: TAdvPanel;
    Panel1: TPanel;
    btnPrint: TButton;
    btnClose: TButton;
    grdSunapReprint: TAdvStringGrid;
    clbSunapFinish: TCheckListBox;
    FormSize1: TFormSize;
    procedure grdSunapReprintDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    function loadMisuIbgeum(chart, jinryo_pid: string): TmisuInfo;
    { Private declarations }
  public
    { Public declarations }
     procedure gridSunap( aGrid : TadvstringGrid; ARow, ACol: Integer);
  end;

var
  HxJiinryo_p_f: THxJiinryo_p_f;

implementation
uses
   uni, db, uDm, uFunctions, uGogekData, uJinryoCalc,uFormInit, Sunap;

{$R *.dfm}


procedure THxJiinryo_p_f.btnCloseClick(Sender: TObject);
begin
      close;
end;

procedure THxJiinryo_p_f.btnPrintClick(Sender: TObject);
begin

    gridSunap( grdSunapReprint , grdSunapReprint.Row, grdSunapReprint.Col);

end;

procedure THxJiinryo_p_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action:= caFree;
end;

procedure THxJiinryo_p_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

     saveGridColumnOrder(grdSunapReprint, 'HxJiinryo_p');

end;

procedure THxJiinryo_p_f.FormCreate(Sender: TObject);
begin
    initAdvPanel( pnlNewon , dm_f.PictureContainer1);
    initAdvGrid(grdSunapReprint);

end;

procedure THxJiinryo_p_f.FormDestroy(Sender: TObject);
begin
       HxJiinryo_p_f := nil;
end;

procedure THxJiinryo_p_f.FormShow(Sender: TObject);
begin
    caption := '영수증 재출력';

    LoadGridColumnOrder(grdSunapReprint, 'HxJiinryo_p');



end;

procedure THxJiinryo_p_f.grdSunapReprintDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

    gridSunap( grdSunapReprint , ARow, ACol);

end;


function  THxJiinryo_p_f.loadMisuIbgeum( chart: string; jinryo_pid: string): TmisuInfo;
var
  tempQuery: TuniQuery;

  misu_pid : string;

begin


  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin

            close;
            SQL.Clear;

            sql.text:='  select * from ma_misusunap '+ #10+
                     ' where chart=:chart and jinryo_pid=:jinryo_pid';
            paramByName('chart').asString := chart;
            paramByName('jinryo_pid').asString := jinryo_pid;
            open;
            if not isEmpty then
            begin
                 misu_pid := fieldByName('misu_pid').asString  ;
                  close;
                  SQL.Clear;

                  sql.text:='  select * from jinryo_p '+ #10+
                           ' where jinryo_pid=:jinryo_pid';
                  paramByName('jinryo_pid').asString := misu_pid;
                  open;
                  if not isEmpty then
                 begin
                      result.misunamEk :=  fieldByName('sunapak').asInteger;
                      result.card :=  fieldByName('card').asInteger;
                      result.hyun :=  fieldByName('cash').asInteger;
                      result.tong :=  fieldByName('tong').asInteger;
                 end
                 else
                 begin
                      result.misunamEk:= 0;
                      result.card    := 0;
                      result.hyun    := 0;
                      result.tong    := 0;
                 end;



            end
            else
            begin
                      result.misunamEk:= 0;
                      result.card    := 0;
                      result.hyun    := 0;
                      result.tong    := 0;
            end;



    end;

  finally

  end;

end;
procedure THxJiinryo_p_f.gridSunap( aGrid : TadvstringGrid; ARow, ACol: Integer);
var
  TreatRoom : string;
  docIndex : integer;
  isInPat : string;
  misuNap  : TMisuInfo;
begin


    //  ma_PrIdn      :=  aGrid.cells[6, arow] ;   //Promise idn
      ma_DocCode    :=  aGrid.OriginalCells[9, arow] ;
      ma_DocName    :=  aGrid.OriginalCells[9, arow] ;
      ma_sunapGumjin:=  strtoint( aGrid.OriginalCells[22, arow])  ;
      ma_SunapChoje :=  strtoint( aGrid.OriginalCells[23, arow])  ;
      ma_SunapJong  :=  strToInt( aGrid.OriginalCells[24, arow])  ;
      ma_treatRoom  :=  aGrid.OriginalCells[25, arow] ;


      ma_sunapDate  :=   aGrid.OriginalCells[33, arow];

      ma_isBohum100  :=  aGrid.Cells[41, arow] ;

      ma_jinryo_pid :=  aGrid.OriginalCells[19, arow]  ;

      ma_sunapChong :=  strtoint(delcomma( aGrid.OriginalCells[15, arow]))  ;
      ma_sunapChung :=  strtoint(delcomma( aGrid.OriginalCells[16, arow]))  ;
      ma_sunapBonin :=  strtoint(delcomma( aGrid.OriginalCells[17, arow]))  ;
      ma_sunapBonin1:=  strtoint(delcomma( aGrid.OriginalCells[18, arow]))  ;
      ma_misuek     :=  strtoint(delcomma( aGrid.OriginalCells[14, arow]))  ;


      if ma_misuek > 0 then    //미수금을 입력했는지 확인하자.
      begin
          misuNap :=  loadMisuIbgeum( ma_chart,  ma_jinryo_pid);
      end;


      if aGrid.OriginalCells[6, arow] ='0' then   //입원/외래 구분
        ma_InOut      :=  false
      else
        ma_InOut      :=  true;



      if not assigned(sunap_f) then
          sunap_f := Tsunap_f.Create(application);


     if aGrid.Cells[41, arow] ='1' then
            sunap_f.lblKind .caption    := '보험100'   //보험100 표시
     else
            sunap_f.lblKind .caption    := '';  //보험100 표시


      sunap_f.lblSunapDay.caption    :=    ma_sunapDate;


      //    sunap_f.setJinSO(ma_chart,  ma_sunapDate);


      sunap_f.lblChart.caption := aGrid.OriginalCells[2, arow] ;


      sunap_f.lblJubsuID.Caption:= aGrid.OriginalCells[20, arow] ;

      sunap_f.lblJinday1.caption     :=    aGrid.OriginalCells[40, arow];  //(입원일)
      sunap_f.lblJinday2.caption     :=    aGrid.OriginalCells[33, arow];   //(퇴원일) 진료시작일
      sunap_f.lblJongbeul.caption    :=    aGrid.OriginalCells[7, arow];

      sunap_f.lblTjungCode.caption   :=    aGrid.OriginalCells[21, arow];   //산정특례코드
      sunap_f.lblTjung.caption       :=    aGrid.OriginalCells[30, arow];   //산정특례 여부




      isInPat := aGrid.OriginalCells[34, arow] ;
      if isInpat <> '0' then
      begin
         ma_InOut := true  ;
      end
      else
      begin
        ma_InOut := false  ;
      end;

      TreatRoom := ma_treatRoom;//aGrid.cells[8, arow];

          sunap_f.Show;


          if TreatRoom  <>  '' then   //TreatRoom
          begin
            sunap_f.cbTreatRoom.ItemIndex :=
                  sunap_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;

            LoadDoclist( sunap_f.cbDoc, TreatRoom);
         end
          else
          begin
            sunap_f.cbTreatRoom.ItemIndex := 0;
          end;

          docIndex:= sunap_f.cbDoc.ComboItems.IndexInColumnOf(2, ma_docName);

         if ma_docName <>'' then
             sunap_f.cbDoc.ItemIndex := docIndex  // cbDoc.ComboItems.IndexInColumnOf(2, docName)
         else
             sunap_f.cbdoc.ItemIndex := 0;


         setJinryo_s(
              sunap_f.lblJubsuID.Caption,
              sunap_f.grdJX2,
              ma_chart,
             sunap_f.cbTreatRoom.ColumnItems[ sunap_f.cbTreatRoom.ItemIndex,0],
             sunap_f.cbDoc.ColumnItems[ sunap_f.cbDoc.ItemIndex, 4],
             isInPat,// '0': 외래 2: 낮병 1: 숙박,
             ma_sunapDate );// FormatDateTime('YYYY-MM-DD',  dMain.Date));

          sunap_f.edtChong2.IntValue       := ma_sunapChong;
          sunap_f.edtChung.IntValue        := ma_sunapChung;
          sunap_f.edtBohum.IntValue        := ma_sunapBonin;
          sunap_f.edtBonin1.IntValue       := ma_sunapBonin1;
          sunap_f.edtSunapChongEk.IntValue := ma_sunapBonin + ma_sunapBonin1;




            if misuNap.misunamEk > 0 then
            begin
               sunap_f.edtSunap.IntValue          := misuNap.misunamEk  + strtoint(  delcomma( aGrid.OriginalCells[10, arow]));
               sunap_f.edtCard.IntValue           := misuNap.card       + strtoint(  delcomma( aGrid.OriginalCells[11, arow])) ;
               sunap_f.edtHyun.IntValue           := misuNap.hyun       + strtoint(  delcomma( aGrid.OriginalCells[12, arow]));
               sunap_f.edtTong.IntValue           := misuNap.tong       + strtoint(  delcomma( aGrid.OriginalCells[13, arow]));

               sunap_f.isMagam := true;
               sunap_f.btnSaveNprint.Enabled      := false;
               sunap_f.btnSave.Enabled            := false;

              sunap_f. memChamgo.Lines.Add('미수입금액 :' + formatfloat('#,0',misuNap.misunamEk  ) );
              sunap_f. memChamgo.Lines.Add('미수잔액 :' + formatfloat('#,0', ma_misuek - misuNap.misunamEk) );

            end
               else
               begin
                sunap_f.edtSunap.IntValue             := strtoint(  delcomma( aGrid.OriginalCells[10, arow]));
                sunap_f.edtCard.IntValue              := strtoint(  delcomma( aGrid.OriginalCells[11, arow])) ;
                sunap_f.edtHyun.IntValue              := strtoint(  delcomma( aGrid.OriginalCells[12, arow])) ;
                sunap_f.edtTong.IntValue              := strtoint(  delcomma( aGrid.OriginalCells[13, arow])) ;
               end;

//                sunap_f.edtCard.IntValue              := strtoint(  delcomma( aGrid.OriginalCells[11, arow])) ;
//                sunap_f.edtHyun.IntValue              := strtoint(  delcomma( aGrid.OriginalCells[12, arow])) ;
//                sunap_f.edtTong.IntValue              := strtoint(  delcomma( aGrid.OriginalCells[13, arow])) ;
                sunap_f.edtDangMisu.IntValue          := strtoint(  delcomma( aGrid.OriginalCells[14, arow])) ;
                sunap_f.edtTong2.IntValue             := strtoint(  delcomma( aGrid.OriginalCells[26, arow])) ;
                sunap_f.edtTongReceipt.IntValue       := strtoint(  delcomma( aGrid.OriginalCells[27, arow])) ;
                sunap_f.edtHyunReceipt.IntValue       := strtoint(  delcomma( aGrid.OriginalCells[28, arow])) ;
                sunap_f.edtGammyun.IntValue           := strtoint(  delcomma( aGrid.OriginalCells[29, arow])) ;

           if strtoint(  delcomma( aGrid.OriginalCells[29, arow])) > 0 then //감면이 있으면
           begin
              sunap_f. memChamgo.Lines.Add('감면금액 :' + aGrid.OriginalCells[29, arow] );

           end;



           case ma_SunapJong of
              1,2,4,5:     //보호일때만
              begin
                   sunap_f.bohoCertSet(aGrid.OriginalCells[36, arow],
                   aGrid.OriginalCells[37, arow],
                   aGrid.OriginalCells[38, arow],
                   aGrid.OriginalCells[39, arow]);
              end;
           end;



end;


end.
