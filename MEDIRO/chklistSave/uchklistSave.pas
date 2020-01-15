unit uchklistSave;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.Imaging.jpeg, FormSize;


type
  TchklistSave_f = class(TForm)
    AdvPanel1: TAdvPanel;
    pnlTop: TAdvPanel;
    lblChart: TLabel;
    lblName: TLabel;
    Label1: TLabel;
    lblSeq: TLabel;
    dtChkList: TDateTimePicker;
    grdChkList: TAdvStringGrid;
    Image1: TImage;
    FormSize1: TFormSize;
    AdvGlowButton3: TButton;
    btnCancel: TButton;
    pnlLabHx: TAdvPanel;
    btnHxView: TButton;
    grdLabHx: TAdvStringGrid;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnHxViewClick(Sender: TObject);
    procedure grdLabHxDblClick(Sender: TObject);
  private
    procedure LoadSavedValue(chart, jin_Day: string);
    function SaveValue(chart, jin_Day: string) : integer;
    procedure loadChkList(chart: string);
     { Private declarations }
  public
    { Public declarations }
  end;

var
  chklistSave_f: TchklistSave_f;

implementation
uses uDM, uGogekData , uMain, uFunctions, uFormInit ;

{$R *.dfm}

procedure TchklistSave_f.AdvGlowButton3Click(Sender: TObject);
var
    nResult : integer;
begin
      nResult := saveValue(ma_chart, formatdatetime('YYYY-MM-DD',dtChkList.Date) ) ;
       case nResult of
           -1:
           begin
                  modalResult := mrOk;
           end;

           0:
             begin


               if saveOrderInfo_updateIhealth(formatdatetime('YYYYMMDD',dtChkList.Date),  // orderDay          :string;
                 ma_chart, // chart
                 ''  ) = true then

                begin
                     modalResult := mrOk;
                end;

             end;

           1:
           begin

               if saveOrderInfo_updateIhealth(formatdatetime('YYYYMMDD',dtChkList.Date),  // orderDay          :string;
                 ma_chart, // chart
                 '1'  ) = true then

                begin
                    modalResult := mrOk;
                end;




           end;


       end;
end;

procedure TchklistSave_f.AdvGlowButton4Click(Sender: TObject);
begin
       close;
end;

procedure TchklistSave_f.btnHxViewClick(Sender: TObject);
begin
       pnlLabHx.Visible := not  pnlLabHx.Visible;
       loadChkList( lblchart.Caption);
end;

procedure TchklistSave_f.loadChkList( chart: string);
var
  varLength, varEditEnd: integer;
  Temp: string;
  jin_day: string;
  jin_Day2: string;
begin

   grdLabHx.RemoveRows(1,grdLabHx.RowCount-1 );

   with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Select jin_day from ma_chart_chklist');
    sql.add('Where  chart= :Chart   group by jin_day order by jin_day  desc ');
     paramByname('Chart').asstring := chart;
    open;

    if not isEmpty then
    begin

      while not eof do
      begin
         grdLabHx.AddRow;
         jin_day := fieldByName('jin_Day').asstring;

         grdLabHx.Cells[1, grdLabHx.RowCount-1] :=  jin_day;

        Next;
      end;

    end;
  end;

end;


procedure TchklistSave_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:=caFree;
end;

procedure TchklistSave_f.FormDestroy(Sender: TObject);
begin
       chklistSave_f := nil;
end;

procedure TchklistSave_f.FormShow(Sender: TObject);
var
     varcode: string;
     varDisp : string;
begin


     caption:='기초항목검사';

     lblChart.Caption := ma_chart;
     lblName.Caption  := ma_paName;

     dtChkList.Date := now;

     grdChkList.ColWidths[3] :=0;

     with dm_f.SqlWork do
     begin
          varCode := '119'; //기초항목검사
          grdChkList.RemoveRows(1,grdChkList.RowCount-1);


          Close;
          Sql.Clear;
          Sql.Add(' select * from ma_basic                  ');
          Sql.Add(' where Code like :Code and Code<> :code2 ');
          Sql.Add(' order by sortorder asc                  ');
          ParamByName('Code').AsString := varCode + '%';
          ParamByName('Code2').AsString := varCode + '000';
          Open;
          First;
          while not eof do
          begin
               grdChkList.addrow;
               varDisp :=  fieldByName('disp').asString;
               grdChkList.CellProperties[1, grdChkList.RowCount -  1].ReadOnly := true;

               grdChkList.cells[1, grdChkList.RowCount-1] := varDisp ;

               grdChkList.cells[3, grdChkList.RowCount-1] :=  fieldByName('val').asString;   //index

               next;
          end;

          grdChkList.autonumbercol(0);
     end;

     LoadSavedValue(  ma_chart, formatDatetime('YYYY-MM-DD', now)) ;

     initAdvGrid(grdLabHx);
     initAdvGrid(grdChkList);
     initAdvPanel(pnlLabHx, dm_f.PictureContainer1);


end;



procedure TchklistSave_f.grdLabHxDblClick(Sender: TObject);
begin

     LoadSavedValue(  ma_chart,  grdLabHx.Cells[1,grdLabHx.row] ) ;
     pnlLabHx.Visible := not  pnlLabHx.Visible;
     dtChklist.Date := strtoDate(grdLabHx.Cells[1,grdLabHx.row]);
end;

procedure TchklistSave_f.LoadSavedValue(chart: string; jin_Day:string);
var
     varcode: string;
     FindRow : integer;
     i : integer;
begin
               for I := 1 to grdChkList.RowCount-1 do
               begin
                 grdChkList.Cells[2, i] := '';
               end;

                     with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from ma_chart_chklist');
                         Sql.Add('Where  chart= :Chart and jin_day=:jin_day'); // and ChkDate= :ChkDate');

                         ParamByName('Chart').AsString   := chart;
                         ParamByName('jin_day').AsString := jin_Day;
                         Open;


                         if not isEmpty then
                         begin

                            while not eof do
                            begin


                              FindRow := Find_Chk_item_Row(grdChkList,  fieldByName('chk_item').asString).varRow ;//grdChkList.Find(1, fieldByName('chk_item').asString);


                              grdChkList.cells[2, FindRow] :=  fieldByName('chk_value').asString;



                              next;
                            end;

                         end;
                    end;

end;


function TchklistSave_f.SaveValue(chart: string; jin_Day:string) : integer;    //; chk_item:string; chk_value:string
const
 insQry   =  '  INSERT INTO ma_chart_chklist     '+#10+
             '        ([chart]                           '+#10+
             '        ,[jin_day]                         '+#10+
             '        ,[chk_item]                       '+#10+
             '        ,[chk_value])                     '+#10+
             '  VALUES                                  '+#10+
             '        (:chart            '+#10+
             '        ,:jin_day          '+#10+
             '        ,:chk_item        '+#10+
             '        ,:chk_value)      ';

var
     varcode: string;
     nRow : integer;
     totRowCnt : integer;
     chk_item:string;
     chk_value:string;
     i:integer;
     nCnt : integer;

begin

      result:= -1;
      totRowCnt := grdChkList.RowCount-1;


      try


          dm_f.UniConnection1.StartTransaction;


          with dm_f.sqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.text:=  'delete from ma_chart_chklist where chart=:chart and jin_day =:jin_day';
               ParamByName('Chart').AsString     := chart;
               ParamByName('jin_day').AsString   := jin_Day;
               execsql;

               nCnt := 0;
          end;


        for I := 1 to totRowCnt do
        begin

          chk_item := grdChkList.Cells[1, i];
          chk_value:= grdChkList.Cells[2, i];

          if  length(trim(chk_value)) > 0  then
          begin

              nCnt:=  1;
              with dm_f.sqlWork do
              begin

                   Close;
                   Sql.Clear;
                   Sql.text:=  insQry;

                   ParamByName('Chart').AsString     := chart;
                   ParamByName('jin_day').AsString   := jin_Day;
                   ParamByName('chk_item').AsString  := chk_item;
                   ParamByName('chk_value').AsString := chk_value;
                   execsql ;

              end;
          end;

        end;

         dm_f.UniConnection1.Commit;

         result:= nCnt;



      except
        on E: Exception do
        begin
           dm_f.UniConnection1.Rollback;
           Showmessage( '[save fail.]' +#10 + E.Message);
        end;

      end;


end;

end.
