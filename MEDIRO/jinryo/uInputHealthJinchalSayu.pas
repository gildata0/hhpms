unit uInputHealthJinchalSayu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, AdvUtil,
  uni,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls;

type
  TInputHealthJinchalSayu_f = class(TForm)
    memNeyukExample: TRichEdit;
    Memo1: TMemo;
    AdvStringGrid1: TAdvStringGrid;
    btnMod: TButton;
    btnAdd: TButton;
    Panel1: TPanel;
    lblSuKey: TLabel;
    lblJubsuID: TLabel;
    lblJinSkey: TLabel;
    lblJinDay: TLabel;
    lblDocID: TLabel;
    lblTjungID: TLabel;
    lblJulNo: TLabel;
    procedure btnModClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadData(chart, jin_day, jubsu_id, user_key, su_key, su_kor_name : string) ;
  end;

var
  InputHealthJinchalSayu_f: TInputHealthJinchalSayu_f;
  aTGubun : array[3..9] of string =('A', 'B','C','D','E','F','G') ;

implementation
uses uConfig, uDM, uFunctions, uJinryoCalc, usysInfo, uGogekData;

{$R *.dfm}

procedure TInputHealthJinchalSayu_f.AdvStringGrid1GetEditorType(Sender: TObject;
  ACol, ARow: Integer; var AEditor: TEditorType);
begin
     with AdvStringGrid1 do
          case ACol of
               3..9:
                    begin
                         AEditor := edCheckBox; // edDateEdit;
                    end;
          end;

end;

procedure TInputHealthJinchalSayu_f.LoadData(chart, jin_day, jubsu_id, user_key, su_key, su_kor_name : string);
var
   i : integer;
   tempQuery: TuniQuery;
   refCmt : string;
   refCmt_sayu : string;


begin

     try
        tempQuery := TuniQuery.Create(self);
        tempQuery.Connection := Dm_f.UniConnection1;
        with tempQuery do
        begin
            close;
            SQL.Clear;

            SQL.Add(' select * from ma_tjung ');
            SQL.Add(' where   chart=:chart and jin_day=:jin_day and refCod = ''JT018'' ');
            paramByName('chart').asString := chart;
            paramByName('jin_day').asString := jin_Day;
            open;
            if not isEmpty then
            begin
                  //ma_Tjung에서 읽어오자.
                   AdvStringGrid1.AddRow;


                   su_key      := fieldByName('su_key').AsString;
                   user_key    :=  fieldByName('su_key').AsString;
                   su_kor_name := getSugaName(fieldByName('su_key').AsString);

                   AdvStringGrid1.cells[0, 1] :=  su_key;
                   AdvStringGrid1.cells[1, 1] :=  user_key;
                   AdvStringGrid1.cells[2, 1] :=  su_kor_name;

                   refCmt      :=  fieldByName('refCmt').AsString ;
                   refCmt_sayu :=  subStr( refCmt, 8,'/');
                   for i := 3 to 9 do
                   begin

                      if pos( aTGubun[i], refCmt) > 0 then
                      begin
                            AdvStringGrid1.AddCheckBox(i, 1, true, false)  ;
                      end
                      else
                      begin
                            AdvStringGrid1.AddCheckBox(i, 1, false, false)  ;
                      end;

                   end;

                  AdvStringGrid1.cells[10, 1] :=  refCmt_sayu;



            end
            else
            begin

                   AdvStringGrid1.AddRow;

                   AdvStringGrid1.cells[0, 1] :=  user_key;
                   AdvStringGrid1.cells[1, 1] :=  su_key;
                   AdvStringGrid1.cells[2, 1] :=  su_kor_name;

                   for i := 3 to 9 do
                   begin
                       AdvStringGrid1.AddCheckBox(i, 1, false, false)  ;
                   end;

            end;
       end;
      finally
          tempQuery.Free;
      end;



        // AdvStringGrid1.AddCheckBox(i, 1, true, false)
        //                         else
        //         AddCheckBox(6, i, false, false);
end;

procedure TInputHealthJinchalSayu_f.btnAddClick(Sender: TObject);
begin
      modalResult:= mrCancel;
end;

procedure TInputHealthJinchalSayu_f.btnModClick(Sender: TObject);
var
    refTyp : string;
    docID  : string;
    sugacode : string;
    refCmt : string;
    stat : boolean;
    i : integer;

begin

    docID :=  lblDocID.Caption;

    refTyp :='1';

    sugacode :=  advstringGrid1.Cells[1, 1];
     //Col 3, 4, 5, 6, 7, 8, 9 까지에서 체크된것을 읽어와서 써주자.
     //    A, B, C, D, E, F, G
    for I := 3 to 9 do
    begin

       advstringGrid1. GetCheckBoxState(i, 1, stat);
       if stat = true then
       begin

              if i = 3 then
                 refCmt :=  aTGubun[i]
              else
                 refCmt := refCmt +'/'+ aTGubun[i] ;

       end
       else
       begin
              if i = 3 then
                 refCmt :=  ''
              else
                 refCmt := refCmt +'/';
       end;

    end;

     refCmt := refCmt +'/'+ advstringGrid1.Cells[10, 1];  //사유 내용

   if
        saveTJung(4,    //1: insert 2: update  3,4 : delete
            '0',               //TjungID,
            lblJubsuID.Caption,    //  jubsu_id,
            ma_chart,
            lblJinday.caption,
            RefTyp,
            lblJinSkey.caption,    // jin_skey,
            lblJulno.caption,
            'JT018',          //
            refCmt,  // RefCmt,
            FormatDateTime('YYYY-MM-DD' ,now),// modday,
            docID,//userID,
            sugacode//su_key : string
            ) = true then
          begin

               if  saveTJung(1,    //1: insert 2: update
                    '0',               //TjungID,
                    lblJubsuID.Caption,    //  jubsu_id,
                    ma_chart,
                    lblJinday.caption,
                    RefTyp,
                    lblJinSkey.caption,    // jin_skey,
                     lblJulno.caption,
                    'JT018',          //
                    refCmt,  // RefCmt,
                    FormatDateTime('YYYY-MM-DD' ,now),// modday,
                    docID,//userID,
                    sugacode//su_key : string
                    ) = true then
                    begin
                    modalResult := mrOK;
                    end
                    else
                    begin
                      showmessage('retry.');
                    end;
          end;



end;



procedure TInputHealthJinchalSayu_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      action:=caFree;
end;

procedure TInputHealthJinchalSayu_f.FormDestroy(Sender: TObject);
begin
     InputHealthJinchalSayu_f := nil;
end;

procedure TInputHealthJinchalSayu_f.FormShow(Sender: TObject);
begin
     caption:= 'JT018 건강검진 실시 당일 별도의 진찰료를 산정이유';
end;

end.
