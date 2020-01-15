unit uReferHospPatListFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TReferHospPatListFrame_fr = class(TFrame)
    pnlSearch: TPanel;
    lblDash: TLabel;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    cb1: TCheckBox;
    cb3: TCheckBox;
    cb4: TCheckBox;
    cb5: TCheckBox;
    cbTerm: TCheckBox;
    CheckBox6: TCheckBox;
    btnSearch: TButton;
    cb2: TCheckBox;
    grdList: TAdvStringGrid;
    UniQuery1: TUniQuery;
    CheckBox1: TCheckBox;
    procedure CheckBox6Click(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cbTermClick(Sender: TObject);
    procedure grdListButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure grdListClickSort(Sender: TObject; ACol: Integer);
    procedure grdListDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdListGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdListGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
  private
    { Private declarations }
         CheckBoxArray: array of TCheckbox;
    procedure SetCheckBoxArray;

  public
    { Public declarations }
    procedure preshow;
    procedure searchRequestList(iKind : integer;
     requestDate1 : string;
     requestDate2 : string ='');

  end;

implementation
uses uFunctions, uDm, uConfig, uGogekData, uFormInit, uMain,  mapSend, smsone;

{$R *.dfm}

procedure TReferHospPatListFrame_fr.preshow;
begin
     SetCheckBoxArray;

     initAdvGrid(grdList, true);

//     grdList.ColWidths[9]:=0;
     grdList.ColWidths[11]:=0;
     grdList.ColWidths[12]:=0;


     dt1.Date := now-10;
     dt2.Date := now;


end;


procedure TReferHospPatListFrame_fr.searchRequestList(iKind : integer;
     requestDate1 : string;
     requestDate2 : string ='');
const
   stateString: array[0..5] of string =
       ('','검사의뢰','의뢰취소','예약완료','예약 취소','검사완료');
var
     tempQuery : TuniQuery ;
     tempQuery2 : TuniQuery ;
     i , j, k: integer;
     paramA, paramB : string;
     detailContent : string;
     patReqPK : string;
     sqltext, sqltext2 : string;

begin
          k:=0;
            for j := 0 to 4 do
            begin
               if checkboxArray[j].Checked then
               begin
                    k:= k+1;
               end;
            end;

           if k<=0 then
           begin
             showmessage('검색내용을 선택하세요.');
             exit;
           end;


     try
        i:= 0;

        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

        tempQuery2 := TuniQuery.create(self);
        tempQuery2.Connection:= dm_f.UniConnection1 ;

        grdList.removeRows(1,grdList.RowCount-1) ;

         with tempQuery do
             begin
             try
              Close;
              SQL.Clear;

              sqltext := ' select * from RP_request ';


              case iKind of
                 0 :  //전체
                  begin

                      //  SQL.Add(' where   requestDate  >= :requestDate  ');
                        sqltext  := sqltext + ' where   CONVERT(CHAR(10), requestDate, 23)  >= :requestDate  ' ;

                        SQL.text := sqltext ;
                        ParamByName('requestDate').AsString := requestDate1 ;
                  end;
                 1 :                          //CONVERT(CHAR(10), DATETIME, 23)
                  begin

                      sqltext  := sqltext + ' where ';

                     if cbTerm.checked then
                     begin


                          sqltext  := sqltext + '  ( CONVERT(CHAR(10), requestDate, 23)  >= :requestDate1 and  CONVERT(CHAR(10), requestDate, 23)  <= :requestDate2 ) ';

                     end
                     else
                     begin //오늘이후만 검색

                          sqltext  := sqltext + '  CONVERT(CHAR(10), requestDate, 23)  >= ' + ''''+ formatdatetime('YYYY-MM-DD', now)+'''' ;

                     end;





                     //   SQL.Add(' where  ( requestDate  >= :requestDate1 and  requestDate  <= :requestDate2 )');

                    k:= 0;
                    sqltext2 :=  '';
                    for j := 0 to 4 do
                    begin
                       if checkboxArray[j].Checked then
                       begin
                            k:= k+1;
                            if k > 1 then
                            begin
                               sqltext2 :=  sqltext2 + ' or (state = ' + ''''+ inttostr(checkboxArray[j].tag) +'''' + ')';


                            end
                            else
                            begin
                               sqltext2 :=  sqltext2 +  ' (state = ' + ''''+ inttostr(checkboxArray[j].tag) +'''' + ')' ;


                            end;


                       end;
                    end;

                             if sqltext2 <> '' then
                             begin

                                 if cbTerm.Checked then
                                 begin


                                      sqltext := sqltext +  ' and  ( '   + sqltext2  +  ' ) ';

                                 end
                                 else
                                 begin
                                      sqltext := sqltext + sqltext2;

                                 end;

                             end;
                              if checkbox1.Checked then //계약병원만...
                                     sqltext := sqltext +  ' and  ( referCode in (select refercode from ma_referhosp where isContract=''1'') ) ';

                              SQL.text := sqltext ;

                             if cbTerm.Checked then
                             begin
                                      ParamByName('requestDate1').AsString := requestDate1 ;
                                      ParamByName('requestDate2').AsString := requestDate2 ;
                             end;



                  end;

              end;


              Open;
              if not isEmpty then
              begin
                 //의뢰서 상태 (1=검사의뢰, 2=의뢰취소, 3=예약완료, 4=예약취소, 5=검사완료)

                 while not eof do
                 begin
                     patReqPK :=   FieldByName('pk').AsString;

                     grdList.addRow;
                     grdList.Cells[1, grdList.RowCount-1]          := FieldByName('requestDate').AsString;  //   의뢰일자
                     grdList.Cells[2, grdList.RowCount-1]          := FieldByName('Hospitalname').AsString;    //   의뢰병원
                     grdList.Cells[3, grdList.RowCount-1]          := FieldByName('PatientName').AsString;    //   환자명
                     grdList.Cells[4, grdList.RowCount-1]          := FieldByName('patientID').AsString;    //   차트번호
                     grdList.Cells[5, grdList.RowCount-1]          := FieldByName('patientPhone').AsString;    //   전화번호
                     grdList.AddButton(6, grdList.RowCount-1,50, 20, '약도전송' ,ADVGrid.haFull,  ADVGrid.vaCenter);  //ADVGrid.haCenter
                 //    grdList.AddButton(6, grdList.RowCount-1,50, 20, '약도전송' ,ADVGrid.haFull  , ADVGrid.vaFull);// .vaCenter);

                     grdList.Cells[7, grdList.RowCount-1]          := FieldByName('content').AsString;    //   의뢰내역
                     grdList.Cells[9, grdList.RowCount-1]          := stateString[ FieldByName('state').AsInteger];     //state
                     grdList.AddButton(10, grdList.RowCount-1,50, 20, '예약실행' ,ADVGrid.haFull, ADVGrid.vaCenter);//,ADVGrid.haCenter
                     grdList.Cells[11, grdList.RowCount-1]         := patReqPK;    //   PK
                     grdList.Cells[12, grdList.RowCount-1]         := FieldByName('userToken').AsString;    //

                     grdList.AddButton(13, grdList.RowCount-1,50, 20, '문자전송' ,ADVGrid.haFull, ADVGrid.vaCenter);//,ADVGrid.haCenter


                     with tempQuery2 do
                         begin
                          try
                          Close;
                          SQL.Clear;

//                           SQL.Add(' select *,                                               ');
//                           SQL.Add('   (select name  from  RP_category where                 ');
//                           SQL.Add('    RP_category.pk= RP_categoryUseRequest.categoryPK     ');
//                           SQL.Add('    and [table]=''1'' ) as cateName                      ');
//                           SQL.Add('      from [RP_categoryUseRequest]                       ');
//                           SQL.Add(' where requestPK =  :requestPK                           ');


                            //요청한 검사목록 불러오자.
                            SQL.Add('select *,                                                                     ');
                            SQL.Add('  (select [name] from RP_examinationKind where pk  = RP_requestUse.[join] )   ');
                            SQL.Add(' as s_name from  RP_requestUse                                                ');
                            SQL.Add('where requestpk=:requestPK and category =''2''                                ');

                           ParamByName('requestPK').AsString :=   patReqPK;
                           Open;

                          detailContent := '';
                           if not isEmpty then
                           begin

                             while not eof do
                             begin
                                 if trim(detailContent) ='' then

                                    detailContent :=   FieldByName('s_name').AsString
                                 else
                                   detailContent :=  detailContent + '/'+ FieldByName('s_name').AsString;


                                 next;
                             end;

                           end;




                               grdList.Cells[8, grdList.RowCount-1]  := detailContent;

                           except

                            end;
                         end;

                   grdList.AutoSizeRow(grdList.RowCount-1);

                   next;
                end;
              end
              else
              begin

              end;


            except

            end;
         end;
  finally
     grdList.AutoNumberCol(0);
   //  grdmain.EndUpdate;
     tempQuery.Free;
     tempQuery2.Free;
  end;


end;


procedure TReferHospPatListFrame_fr.btnSearchClick(Sender: TObject);
begin
     searchRequestList(1, formatDatetime('YYYY-MM-DD', dt1.Datetime),
                        formatDatetime('YYYY-MM-DD', dt2.Datetime) );    //검사 의뢰자면 보자.

end;

procedure TReferHospPatListFrame_fr.cbTermClick(Sender: TObject);
begin
    lblDash.Visible :=    (sender as TCheckBox).Checked;
         dt2.Visible     :=    (sender as TCheckBox).Checked;

         if  (sender as TCheckBox).Checked = false then
         begin
             dt1.Date := now;
         end;

end;

procedure TReferHospPatListFrame_fr.CheckBox6Click(Sender: TObject);
var
   i : integer;
begin
       for I := 0 to 4 do
       begin
           CheckBoxArray[i].Checked :=  (sender as TCheckBox).Checked ;
       end;


end;

procedure TReferHospPatListFrame_fr.grdListButtonClick(Sender: TObject; ACol,
  ARow: Integer);
begin
    grdList.Row:= ARow;
   case acol of
          6 :
          begin



               if not Assigned(mapSend_f) then
                    mapSend_f := TmapSend_f.Create(application);

               mapSend_f.edtsendno.text := call_tel_type(grdList.Cells[5, aRow]);


               mapSend_f.edtSubject.text   :=  configvalue.varsaupname+ ' 오시는 길';
               mapSend_f.edtRcvno.text     :=  configvalue.varTel1 ;



               mapSend_f.showmodal;


          end;
          13 :
          begin
               if trim(grdList.Cells[5, aRow]) = '' then
               begin
                   showmessage('전화번호 이상');
                   exit;
               end;

                  if not Assigned(smsone_f) then
                    smsone_f := Tsmsone_f.Create(application);

                  smsone_f.varmode := 0;
                  smsone_f.lblChart.Caption          := '';
                  smsone_f.lblChart.Caption          := grdList.Cells[4, aRow];
                  smsone_f.edtname.Text              := grdList.Cells[3, aRow];
                  smsone_f.edtRecvno.Text            := call_tel_type(grdList.Cells[5, aRow]);
                  smsone_f.memContent.Text           := '';
                  smsone_f.LblMemcontentSize.Caption := '0/';
                  smsone_f.ShowModal;


          end;
          10:
          begin
               main_f.PageControl3.ActivePageIndex := 1;
              (Parent as TForm).ModalResult    :=   mrOK;

          end;
        end;
end;

procedure TReferHospPatListFrame_fr.grdListClickSort(Sender: TObject;
  ACol: Integer);
begin
  (sender as TAdvStringGrid).AutoNumberCol(0);
end;

procedure TReferHospPatListFrame_fr.grdListDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
       (Parent as TForm).ModalResult    :=   mrOK;

  //   modalResult                   :=   mrOK;

     //신환 차트번호 생성

end;

procedure TReferHospPatListFrame_fr.grdListGetCellBorder(Sender: TObject; ARow,
  ACol: Integer; APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];

               APen.Width := 2;
               APen.Color := $00f2e6e2;//clSilver; //clGray;

           end;

end;

procedure TReferHospPatListFrame_fr.grdListGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     //(1=검사의뢰, 2=의뢰취소, 3=예약완료, 4=예약취소, 5=검사완료)
      if (aRow > 0)
          and  (aCol > 0)
             and ( grdList.originalCells[grdList.RealColIndex(9), aRow]  = '검사완료') then
                   begin  //검사완료
                       aBrush.Color := $00EAFFEA;
                       aFont.Color  := clBlack;
                   end;


end;

procedure TReferHospPatListFrame_fr.SetCheckBoxArray;
begin
     setLength(CheckBoxArray, 5);
     CheckBoxArray[0] := cb1;
     CheckBoxArray[1] := cb2;
     CheckBoxArray[2] := cb3;
     CheckBoxArray[3] := cb4;
     CheckBoxArray[4] := cb5;

end;

end.
