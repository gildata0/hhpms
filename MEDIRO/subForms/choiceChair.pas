unit choiceChair;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs,   ExtCtrls, AdvSelectors, Grids, AdvObj, BaseGrid,
  AdvGrid, StdCtrls, AdvUtil;

type
     TchoiceChair_f = class(TForm)
    grdmain: TAdvStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    AdvColorSelector1: TAdvColorSelector;
    btnCls: TButton;
          procedure btnClsClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure grdmainClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button1Click(Sender: TObject);
     private
    procedure loadChairName;
    function checkExistChair(varDay, varGubun, varChair: string) :string;
          { Private declarations }
     public
         varjinDay : TDateTime;
         varChair, varJubsuId : string;
          { Public declarations }
      end;

var
     choiceChair_f: TchoiceChair_f;

implementation
uses udm, uFunctions, uMain, uGogekData, uPromiseData, chairName2;
{$R *.dfm}

procedure TchoiceChair_f.btnClsClick(Sender: TObject);
begin
     close;
end;

procedure TchoiceChair_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TchoiceChair_f.FormDestroy(Sender: TObject);
begin
     choiceChair_f := nil;
end;

procedure TchoiceChair_f.FormShow(Sender: TObject);
begin
     caption := '체어선택';
     loadChairName;
end;
procedure TchoiceChair_f.loadChairName;
var
     nRowCount, i, c, r:integer;
begin
     i := 0;
     r := 0;

     with Dm_f.sqlTemp, grdMain do
     begin
          close;
          sql.clear;
          SQL.Text := 'select * from ma_basic_chair  order by convert(int, chairname,121)';
          Open;
          nRowCount := recordcount;

          if not Dm_f.sqlTemp.IsEmpty then
          begin
               rowCount := (nRowcount  div 5) +1;

               while not EOF do
               begin
                    r := i div 5;
                    c := i mod 5;
                       Cells[c, r] := FieldByName('ChairRemark').AsString;
                  //  Cells[2, i] := FieldByName('ChairRemark').AsString;

                    RowHeights[r]:=40;
                    inc(i);

                    Next;
               end;
           end
           else
           begin
              rowCount := 5;
              for i:= 0 to 24 do
              begin
                    r := i div 5;
                    c := i mod 5;
                    Cells[c, r] := inttostr(i+1);
                    RowHeights[r]:=40;

              end;

           end;
     end;

end;


function  TchoiceChair_f.checkExistChair(varDay,   varGubun, varChair: string) :string;
begin
    result:= '';
    with dm_f.sqlwork do
    begin
        close;
        sql.clear;
        sql.text:= 'select * from ma_jubsu  ' +#10#13+
                   ' where    gubun=:gubun and jin_day=:jin_day and chair=:chair';
   //     paramByName('team').asString := varTeam;
   //     paramByName('chart').asString :=  varChart;
        paramByName('gubun').asString :=  varGubun;
        paramByName('jin_day').asString :=varDay;
        paramByName('chair').asString := varChair;

               //    ' where team=' +''+ varteam +''+ ' and chart= ' +''+ varchart +''+ ' and gubun='+''+ varGubun +''+  ' and jin_day=' +''+ varDay +''+ 'and chair='+varChair;
        open;
        if not isEmpty then
        begin
            result:= fieldByName('id').AsString;
        end;
    end;
end;

procedure TchoiceChair_f.grdmainClickCell(Sender: TObject; ARow,
  ACol: Integer);
var

      vartag : string;
    //  modalResult : TModalResult;
begin
        varJubsuId := '';

      //  varTag := '1';
        varChair := grdmain.cells[acol, aRow];
        vartag :='1';

     // toDo : 체어를 선택했는데 같은번호의 체어가 이미 진료중이라면...
     // 같은 체어에 이미 누군가 있다고 알리고,
     //  수납으로 보낼것인지 다른 체어를 선택하게 할것인지를 결정하도록 하자.


        varJubsuId :=  checkExistChair(formatdatetime('yyyy-mm-dd', varjinDay)
         ,vartag,
          varChair);


        modalResult := mrOk;




end;

 {
procedure TchoiceChair_f.saveChairNumber(
     varprIdn: string;
     varChair: string;
     varPrTeam:string;
      varTag: string = '1';
     varJubsuId : string ='';);
begin



     varChair := grdmain.cells[acol, aRow];

     varPridn := trim(main_f.grdDaegi.Cells[17, main_f.grdDaegi.Row]);
     varPrTeam :=  main_f.grdDaegi.Cells[5, main_f.grdDaegi.Row];


     // toDo : 체어를 선택했는데 같은번호의 체어가 이미 진료중이라면...
     // 같은 체어에 이미 누군가 있다고 알리고,
     //  수납으로 보낼것인지 다른 체어를 선택하게 할것인지를 결정하도록 하자.

     varJubsuId :=  checkExistChair(formatdatetime('yyyy-mm-dd', main_f.dtDate.date),
      vartag,
      varChair);




     if  varJubsuId <> '' then
     begin

          if Application.MessageBox(pchar(
          '이미 체어'+  varChair + '를 사용중입니다.'+#10#13+
             '기존 대기상태를 수납대기로 변경 하시겠습니까?'), '확인', MB_YESNO) = 6 then
          begin
               varTag := '2';  //수납대기
               if ChangeStatus_JubsuID(varJubsuId)  = true then
               begin
                    

               end;

          end;

    end;


           varTag := '1';  //수납대기

          if ChangeStatus(main_f.grdDaegi.Cells[3, main_f.grdDaegi.Row],
               formatdatetime('yyyy-mm-dd', main_f.dtDate.date),
               varPrTeam,
                main_f.grdDaegi.Cells[4, main_f.grdDaegi.Row],
                    '', varTag, varChair) = true then
          begin
               main_f.jubsuselect(main_f.grdDaegi,
                    formatdatetime('yyyy-mm-dd', main_f.dtDate.date), //일자
                    inttostr(main_f.cbDaegigubun.itemindex - 1), //구분
                    main_f.cbteam.Text //팀
                    );
               if varPridn <> '' then
                    Promise_UpdatePos(strtoint(varPridn), vartag);

          end;



     close;



end;
}

procedure TchoiceChair_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
       Halign:=  taCenter;
       vAlign:=  vtaCenter;
end;

procedure TchoiceChair_f.Button1Click(Sender: TObject);
begin
     if not Assigned(chairname2_f) then
          chairname2_f := Tchairname2_f.Create(application);
     chairname2_f.showmodal;

end;

end.


