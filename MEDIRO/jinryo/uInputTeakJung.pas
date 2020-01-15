unit uInputTeakJung;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, AdvSplitter, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, AdvCombo,
  ColCombo, FormSize, AdvPanel;

type
  TInputTeakJung_f = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdNeyuk: TAdvStringGrid;
    btnMod: TButton;
    btnAdd: TButton;
    btnClear: TButton;
    btnDelete: TButton;
    Button5: TButton;
    btnClose: TButton;
    Panel4: TPanel;
    AdvSplitter1: TAdvSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    줄번호단위: TTabSheet;
    Panel5: TPanel;
    memTJungSayuJul: TMemo;
    edtCode: TEdit;
    edtSugaCode: TEdit;
    FormSize1: TFormSize;
    Panel3: TAdvPanel;
    memNeyuk: TMemo;
    cbTjungNeyuk: TColumnComboBox;
    Panel6: TPanel;
    edtCodeMyungse: TEdit;
    memTJungSayuMyungse: TMemo;
    lblSuKey: TLabel;
    memNeyukExample: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblJubsuID: TLabel;
    lblJinSkey: TLabel;
    lblJinDay: TLabel;
    lblDocID: TLabel;
    lblTjungID: TLabel;
    Label4: TLabel;
    edtSayuCode: TEdit;
    lblChart: TLabel;
    lblJulNo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cbTjungNeyukChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnModClick(Sender: TObject);
    procedure grdNeyukClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    procedure fieldClear;


    { Private declarations }
  public
    { Public declarations }
    procedure LoadTJungCode(kind:integer);
  end;

var
  InputTeakJung_f: TInputTeakJung_f;

implementation
uses uConfig, uDM, uFunctions, usysInfo, uGogekData;

{$R *.dfm}

procedure TInputTeakJung_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:= caFree;
end;

procedure TInputTeakJung_f.FormCreate(Sender: TObject);
begin

      caption:= '특정내역입력';
      fieldClear;
   //   LoadTJungCode(1);

end;

procedure TInputTeakJung_f.FormDestroy(Sender: TObject);
begin
      InputTeakJung_f := nil;
end;

procedure TInputTeakJung_f.FormShow(Sender: TObject);
begin



      grdneyuk.colwidths[1] := 0;   //발생단위
      grdneyuk.colwidths[3] := 0;   //줄번호
      grdneyuk.colwidths[7] := 0;   //작성자ID
      grdneyuk.colwidths[8] := 0;    //TjungCode
      grdneyuk.colwidths[9] := 0;    //Jin_sKey


end;

procedure TInputTeakJung_f.grdNeyukClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

    if grdneyuk.Cells[1,  ARow] = '2' then
          pagecontrol1.ActivePageIndex :=0                       //refTyp 발생단위
    else
          pagecontrol1.ActivePageIndex :=1;

    edtSugaCode.text   := grdneyuk.Cells[2,  ARow];
    lblJinSkey.caption := grdneyuk.Cells[3,  ARow];   //줄번호

    cbTJungNeyuk.ItemIndex :=
                    InputTeakJung_f.cbTJungNeyuk.ComboItems.IndexInColumnOf(0, grdneyuk.Cells[4, ARow] )  ;

    edtCode.text := grdneyuk.Cells[4,  ARow]  ;


    lblDocId.Caption     :=    grdneyuk.Cells[7,  ARow] ;      //docID
    lblJinDay.Caption    :=    grdneyuk.Cells[6,  ARow] ;      //lblJinDay

    lblTjungId.Caption   :=    grdneyuk.Cells[8,  ARow] ;       //lblTjungId
    memTJungSayuJul.Text :=    grdneyuk.Cells[5,  ARow] ;
end;










procedure TInputTeakJung_f.btnAddClick(Sender: TObject);
var
    refTyp : string;
    docID  : string;
begin

   docID :=  lblDocID.Caption;

    case pagecontrol1.ActivePageIndex of
       0:
         begin
            refTyp :='1';

            saveTJung(1,    //1: insert 2: update
              '0',               //TjungID,
              lblJubsuID.Caption,    //  jubsu_id,
              lblChart.Caption,// ma_chart,
              lblJinday.caption,
              RefTyp,
              '0',    // jin_skey,
              '0',
              edtCodeMyungse.text,          //RefCod
              memTJungSayuMyungse.text,  // RefCmt,
              FormatDateTime('YYYY-MM-DD' ,now),// modday,
              docID,//userID,
              ''//edtSugaCode.text//su_key : string
              );

         end;
       1:
         begin
            refTyp :='2';

            saveTJung(1,    //1: insert 2: update
              '0',               //TjungID,
              lblJubsuID.Caption,    //  jubsu_id,
              lblChart.Caption,// ma_chart,
              lblJinday.caption,
              RefTyp,
              lblJinSkey.caption,    // jin_skey,
              lblJulNo.caption,
              edtCode.text,          //RefCod
              memTJungSayuJul.text,  // RefCmt,
              FormatDateTime('YYYY-MM-DD' ,now),// modday,
              docID,//userID,
              edtSugaCode.text//su_key : string
              );


         end;
    end;




      loadTjungHx( grdneyuk,
                 lblChart.Caption,
                 lblJinday.caption,
                 lblJubsuID.Caption);

//     grdneyuk.addRow;
//     grdneyuk.Cells[1,  grdneyuk.rowcount-1]:=  refTyp;   //발생단위
//     grdneyuk.Cells[2,  grdneyuk.rowcount-1]:=  edtSugaCode.text;
//     grdneyuk.Cells[3,  grdneyuk.rowcount-1]:=   lblJinSkey.caption ;    //줄번호
//     grdneyuk.Cells[4,  grdneyuk.rowcount-1]:=  cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] ;
//     grdneyuk.Cells[5,  grdneyuk.rowcount-1]:=  edtCode.text+'/'+edtSugaCode.Text+'/';
//     grdneyuk.Cells[6,  grdneyuk.rowcount-1]:=  FormatDateTime('YYYY-MM-DD' ,now);// FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date);
//     grdneyuk.Cells[7,  grdneyuk.rowcount-1]:=  docID;//
//     grdneyuk.Cells[8,  grdneyuk.rowcount-1]:=  '0';//
//     grdneyuk.Cells[9,  grdneyuk.rowcount-1]:=  lblJinSkey.captio;//


end;




procedure TInputTeakJung_f.btnClearClick(Sender: TObject);
begin

     fieldClear;

end;

procedure TInputTeakJung_f.btnCloseClick(Sender: TObject);
begin
       close;
end;

procedure TInputTeakJung_f.btnModClick(Sender: TObject);
var
    refTyp : string;
    docID  : string;
begin

   docID :=  lblDocID.Caption;

    case pagecontrol1.ActivePageIndex of
       0: refTyp :='2';
       1: refTyp :='1';
    end;

    saveTJung(2,  //1: insert 2: update
      lblTjungId.Caption,               //TjungID,
      lblJubsuID.Caption,    //  jubsu_id,
      lblChart.caption,
      lblJinday.caption,
      RefTyp,
      lblJinSkey.caption,    // jin_skey,
      lblJulno.Caption,
      edtCode.text,          //
      memTJungSayuJul.text,  // RefCmt,
      FormatDateTime('YYYY-MM-DD' ,now),// modday,
      docID,//userID,
      edtSugaCode.text//su_key : string
      );


    loadTjungHx( grdneyuk,
                  lblChart.caption, lblJinday.caption, lblJubsuID.Caption);


end;

procedure TInputTeakJung_f.btnDeleteClick(Sender: TObject);
begin
    saveTJung(3,   //1: insert 2: update 3: Delete
      lblTJungID.Caption,               //TjungID,
      lblJubsuID.Caption,    //  jubsu_id,
      lblChart.caption,//ma_chart,
      lblJinday.caption,
      '1',
      lblJinSkey.caption,    // jin_skey,
      '0',//lblJulno.Caption,
      edtCode.text,          //
      memTJungSayuJul.text,  // RefCmt,
      FormatDateTime('YYYY-MM-DD' ,now),// modday,
      '',//userID,
      edtSugaCode.text//su_key : string

      );

      fieldClear;

      loadTjungHx( grdneyuk,
                  lblChart.caption, lblJinday.caption, lblJubsuID.Caption);

end;

procedure TInputTeakJung_f.cbTjungNeyukChange(Sender: TObject);
begin
      memNeyuk.Text  := '['+ cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] +']'
                           + cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 1];


      memNeyukExample.Text
          := LoadExample_Teakrye(cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0]) ;


    case pagecontrol1.ActivePageIndex of
       1: edtCode.text       :=    cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] ;
       0: edtCodeMyungse.text:=    cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] ;
    end;

//      edtCode.text:=    cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] ;

end;

procedure TInputTeakJung_f.fieldClear;
begin

     grdNeyuk.RemoveRows(1,  grdNeyuk.RowCount-1 );

      cbTjungNeyuk.itemIndex    := 0;
      edtCode.Text              :='';
      edtSugaCode.Text          :='';
      edtCodeMyungse.Text       :='';
      memTJungSayuJul.Lines.Clear;
      memTJungSayuMyungSe.Lines.Clear;
      memNeyuk.Lines.Clear;
      memNeyukExample.Lines.Clear;

end;

procedure TInputTeakJung_f.LoadTJungCode(kind : integer);
begin

  try
      screen.Cursor := crHourGlass;


      with Dm_f.sqlTemp do
      begin

        with  cbTjungNeyuk do
        begin
          Columns.Clear;
          ComboItems.Clear;
        end;

        close;
        SQL.Clear;

        case kind of

        0: //명세서단위
        SQL.text :=
                   'Select * from ma_basic                                   ' +
          #13#10 + 'where  (code like  ''130%'') and (code <> ''13000'')     ' +
          #13#10 + 'and inuse <>  ''0'' and val not like ''J%''               '
          + #13#10 +
        // 'order by val,code                                        ';
          'order by val                                    ';

        1: //줄번호단위
         SQL.text :=
                   'Select * from ma_basic                                   ' +
          #13#10 + 'where  (code like  ''130%'') and (code <> ''13000'')     ' +
          #13#10 + 'and inuse <>  ''0'' and val  like ''J%''               '
          + #13#10 +
        // 'order by val,code                                        ';
          'order by val                                    ';

         end;
        open;
        if not isEmpty then
        begin

          with cbTjungNeyuk do
          begin
            with Columns.Add do
            begin
              width := 70;
            //  Font.Style := [fsBold];
              Font.Name := '맑은 고딕';
              Font.Size := 11;
            end;
            with Columns.Add do
            begin
              width := 500;
             // Font.Color := ClBlue;
            //  Font.Style := [fsBold];
              Font.Name := '맑은 고딕';
              Font.Size := 11;
            end;
            with Columns.Add do
            begin
              width := 0;
             // Font.Color := ClBlue;
            //  Font.Style := [fsBold];
              Font.Name := '맑은 고딕';
              Font.Size := 11;
            end;
            end;

          end;

          while not eof do
          begin

            with cbTjungNeyuk.ComboItems.Add do
            begin


              Strings.Add(trim(fieldByname('val').asString)); //
              Strings.Add(trim(fieldByname('disp').asString));
           //   Strings.Add(trim(fieldByname('remark').asString)); //

            end;


            next;
          end;

        end;
   finally
   screen.Cursor := crDefault;
  end;
end;

procedure TInputTeakJung_f.PageControl1Change(Sender: TObject);
begin
    LoadTJungCode(PageControl1.ActivePageIndex);
end;

end.


