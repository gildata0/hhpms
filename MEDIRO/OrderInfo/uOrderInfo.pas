unit uOrderInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  Vcl.ExtCtrls, AdvSplitter, AdvPanel, FormSize, iniFiles, AdvUtil,
  Vcl.StdCtrls, Vcl.ComCtrls,
  uni, db, Vcl.Menus, AdvEdit;

type
  TorderInfo_f = class(TForm)
    FormSize1: TFormSize;
    AdvPanel1: TAdvPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btnRefresh: TButton;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    cbNotTaken: TCheckBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cbAutoRefresh: TCheckBox;
    edtInterval: TAdvEdit;
    pnlPT: TAdvPanel;
    grdPT: TAdvStringGrid;
    pnlMri: TAdvPanel;
    grdMri: TAdvStringGrid;
    pnlCT: TAdvPanel;
    grdCt: TAdvStringGrid;
    pnlBt: TAdvPanel;
    grdBt: TAdvStringGrid;
    pnlSono: TAdvPanel;
    grdSono: TAdvStringGrid;
    pnlXray: TAdvPanel;
    grdXray: TAdvStringGrid;
    pnlSc: TAdvPanel;
    grdSc: TAdvStringGrid;
    N3: TMenuItem;
    Button1: TButton;
    lblVersion: TLabel;
    pnlMss: TAdvPanel;
    grdMss: TAdvStringGrid;
    pnlVitalinfo: TAdvPanel;
    btnExamInput: TButton;
    edtChkList: TRichEdit;
    N4: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cbAutoRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdCtRightClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure N3Click(Sender: TObject);
    procedure pnlCTCaptionDBlClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grdCtGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdCtClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdCtGridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: string);
    procedure edtChkListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure edtChkListClick(Sender: TObject);
  private
    function ConnectBitServer: boolean;
    procedure selectGrid(aGrid: TadvStringGrid; aKind : string; notTake : boolean = true);
    procedure takenUpdate(aGrid: TadvstringGrid);
    procedure AllRefresh;
    procedure takenUpdate_cancel(aGrid: TadvstringGrid);
    { Private declarations }
  public
    { Public declarations }
  end;


var
  orderInfo_f: TorderInfo_f;
  {
-CR
-CT
-DR
-DT
-EKG
-EP
-INJ
-JUP
-LAB
-MED
-MG
-MR
-MRI
-OT
-RF
-SC
-SONO
-US
-XA
-XRAY
-MSS
}

implementation
uses uConfig, uGogekData, uFunctions, uDm;

{$R *.dfm}


procedure TorderInfo_f.btnRefreshClick(Sender: TObject);
begin



    AllRefresh;

end;


procedure TorderInfo_f.Button1Click(Sender: TObject);
begin
      pnlsc.Height:= 100;
end;

procedure TorderInfo_f.AllRefresh;
begin
{aXray:
 aSc  :
 aSono:
 aCT  :
 aBT  :
 aMRI :
 aPT  :   }
//'xRay', 'EKG' , 'Sono', 'CT'  ,'BT','MRI', 'CT' , 'MSS'

    selectGrid(grdXray, 'xRay', cbNotTaken.Checked);
    selectGrid(grdSc,   'EKG',  cbNotTaken.Checked);
    selectGrid(grdSono, 'Sono', cbNotTaken.Checked);
    selectGrid(grdCT,   'CT',   cbNotTaken.Checked);
    selectGrid(grdBT,   'BT',   cbNotTaken.Checked);
    selectGrid(grdMRI,  'MRI',  cbNotTaken.Checked);
    selectGrid(grdPT,   'CD',   cbNotTaken.Checked);
    selectGrid(grdMss,  'MSS',  cbNotTaken.Checked);

end;


procedure TorderInfo_f.selectGrid(aGrid:TadvStringGrid; aKind : string; notTake : boolean = true);
const
      selQry =
                              '  select  * from [mediroPACK].[dbo].[orderInf]  ';
      selQry_Where_orderDay = ' where  (order_day >= :d1 and order_day <= :d2) ' ;
      selQry_Where_modal    = ' and modality = :modality                       ';
      selQry_Where_notTake  = ' and taken = ''0''                              ';  //촬영 안한것만 가져온다.
      selQry_orderBy        = ' order by order_day,  order_time , chart        ';  //시간 순으로 먼저온사람이 맨위,
                                                                                   //같은사람이 다른시간에 오더 받은 경우는?
var
      tempQuery: TuniQuery;
      tempQuery2: TuniQuery;
      d1, d2 : string;
      aRow : integer;
      aChart : string;
      bChart : string;
      aPhone : string;

begin


      aRow:= 0;
      d1  := formatdatetime('YYYYMMDD',datetimepicker1.Date);
      d2  := formatdatetime('YYYYMMDD',datetimepicker2.Date) ;

         try
          tempQuery := TuniQuery.Create(self);
          tempQuery.Connection  := Dm_f.UniConnectionBIT;


          tempQuery2 := TuniQuery.Create(self);
          tempQuery2.Connection := Dm_f.UniConnectionBIT;


             with tempQuery do
             begin
                     close;
                     sql.Clear;
                     sql.text :=  selQry + selQry_Where_orderDay ;
// const
//     aXray: array[0..3] of string = ('XA', 'XRAY', 'CR','DR');
//     aSc  : array[0..1] of string = ('SC', 'XRAY');
//     aSono: array[0..1] of string = ('US', 'SONO');
//     aCT  : array[0..0] of string = ('CT');
//     aBT  : array[0..0] of string = ('LAB');
//     aMRI : array[0..1] of string = ('MR', 'MRI');
//     aPT  : array[0..9] of string = ('DT', 'EKG','INJ','EP','INJ','JUP','OT','RF', 'MED','MG');
                //''XA'', ''XRAY'',''DR'',''MG'',''DT'', ''EKG'',''OT'',''RF'', ''MED''   ''CR''

                    case strCase( aKind ,['xRay', 'EKG' , 'Sono', 'CT'  ,'BT','MRI', 'CD','MSS'])  of
                    0:  sql.text :=  sql.text +    ' and modality in (''XA'', ''XRAY'',''DR'',''MG'',''DT'', ''EKG'',''OT'',''RF'', ''MED'') ';
                    1:  sql.text :=  sql.text +    ' and modality in (''SC'') ';
                    2:  sql.text :=  sql.text +    ' and modality in (''US'', ''SONO'') ';
                    3:  sql.text :=  sql.text +    ' and modality in (''CT'',''JOC'') ';   //JOC 조영제
                    4:  sql.text :=  sql.text +    ' and modality in (''LAB'') ';
                    5:  sql.text :=  sql.text +    ' and modality in (''MR'', ''MRI'',''JOM'') '; //JOM 조영제
                    6:  sql.text :=  sql.text +    ' and modality in (''CD'', ''CR'') ';
                    7:  sql.text :=  sql.text +    ' and modality in (''MSS'') ';

                     end;

                     if notTake = true then
                       sql.text :=  sql.text + selQry_Where_notTake ;

                     sql.text   :=  sql.text +    selQry_orderBy ;

                     paramByName('d1').AsString := d1;
                     paramByName('d2').AsString := d2;

                     open;
                     first;


                     aGrid.RowCount := recordCount + 1;


                     while not eof  do
                     begin
                          aRow := aRow + 1;

                          aChart :=  fieldbyname('chart').AsString;

                          aPhone := substr(LoadGogekPhone(aChart, '2'), 2, ':');

                          if fieldbyname('taken').AsString = '1' then
                                aGrid.Cells[1,  aRow] :='V'
                           else
                                aGrid.Cells[1,  aRow] :='';

                          if aChart <> bChart then
                          begin
                                aGrid.Cells[2,  aRow] :=      fieldbyname('chart').AsString;
                                aGrid.Cells[3,  aRow] :=      fieldbyname('hname').AsString;
                                aGrid.Cells[4,  aRow] :=      fieldbyname('ename').AsString;
                                aGrid.Cells[5,  aRow] :=      fieldbyname('gender').AsString +'/'+ fieldbyname('age').AsString;
                          end
                          else
                          begin

                               aGrid.Cells[2,  aRow] := '';
                               aGrid.Cells[3,  aRow] :=  '';
                               aGrid.Cells[4,  aRow] :=  '';
                               aGrid.Cells[5,  aRow] :=  '';
                          end;

                          aGrid.Cells[6,  aRow] := fieldbyname('su_eng_name').AsString;
                                         //    fieldbyname('su_eng_name').AsString+ ' ('+ aPhone+')';
                         if aKind='MSS' then
                          begin
                            aGrid.Cells[6,  aRow] :=
                               fieldbyname('su_eng_name').AsString+ ' ('+ aPhone+')';

                          end;

                          aGrid.Cells[7,  aRow] :=      fieldbyname('docname').AsString;
                          aGrid.Cells[8,  aRow] :=      copy(fieldbyname('order_time').AsString,1,2)+ ':'+
                                                         copy(fieldbyname('order_time').AsString,3,2)+  ':'+
                                                          copy(fieldbyname('order_time').AsString,5,2);
                          aGrid.Cells[9,  aRow] :=      copy(fieldbyname('order_day').AsString,1,4) +'-' +
                                                         copy(fieldbyname('order_day').AsString,5,2) +'-' +
                                                          copy(fieldbyname('order_day').AsString,7,2);
                          aGrid.Cells[10,  aRow] :=     fieldbyname('su_key').AsString;
                          aGrid.Cells[11,  aRow] :=     fieldbyname('su_kor_name').AsString;
                          aGrid.Cells[12,  aRow] :=     fieldbyname('jin_ilsu').AsString;
                          aGrid.Cells[13,  aRow] :=     fieldbyname('reserve_time').AsString;
                          aGrid.Cells[14,  aRow] :=     fieldbyname('sect').AsString;
                          aGrid.Cells[15,  aRow] :=     fieldbyname('modality').AsString;
                          aGrid.Cells[16,  aRow] :=     fieldbyname('orderID').AsString;
                          aGrid.Cells[17,  aRow] :=     fieldbyname('remark').AsString;
                          aGrid.Cells[18,  aRow] :=     fieldbyname('ikind').AsString;
                                                        //기초검사정보가 있으면 1.
//
//                              if   trim(FieldByName('remark').AsString) <>'' then
//                               begin
//                                   // 이름에 힌트 보여주기
//                                    aGrid.addcomment(3,aRow,trim(FieldByName('remark').AsString));
//                               end;
//
                          aGrid.RemoveComment(2,aRow);

                          if   trim(FieldByName('ikind').AsString) = '1' then
                           begin
                               // 차트번호에 힌트 보여주기
                                aGrid.addcomment(2,aRow,trim('기초정보'));
                           end;


                          bChart :=  fieldbyname('chart').AsString;
                          next;


                    end;

             end;
         finally

                 aGrid.AutoNumberCol(0);
                 tempQuery.Free;
                 tempQuery2.Free;
         end;


      {선택
      차트번호           fieldbyname('chart').AsString;
      환자명(한글)       fieldbyname('hname').AsString;
      환자명(영문)       fieldbyname('ename').AsString;
      성별/나이          fieldbyname('gender').AsString; / fieldbyname('age').AsString;
      처방명칭(영문)     fieldbyname('su_eng_name').AsString;
      주치의             fieldbyname('doctor').AsString;
      의뢰시간           fieldbyname('order_time').AsString;
      일자               fieldbyname('order_day').AsString;
      처방코드           fieldbyname('su_key').AsString;
      처방명칭(한글)     fieldbyname('su_kor_name').AsString;
      투여량             fieldbyname('jin_ilsu').AsString;
      예약시간           fieldbyname('reserve_time').AsString;
      접수구분           fieldbyname('sect').AsString;
      Modality           fieldbyname('modality').AsString; }






end;

procedure TorderInfo_f.cbAutoRefreshClick(Sender: TObject);
begin
        if (sender as TCheckbox).checked then
           timer1.Enabled := true
           else
                 timer1.Enabled := false;

end;

function TorderInfo_f.ConnectBitServer : boolean;
begin

  result:= false;
  try
     if loadini = true then
     begin
        configvalue.LoadGlobalData_ini;  //ini정보를 열자.


     if dm_f.ConnectDatabase(configvalue.varDbip,
          configvalue.varDbname,
          configvalue.varDbuser, configvalue.varDbpass,
          configvalue.varDbProtocol,
                          configvalue.varDbPort) = true then
     begin

          configvalue.LoadGlobalData_db;


         {$IFNDEF DEBUG}
             if dm_f.ConnectDatabase_BIT(configvalue.varImageIp,
                  'DrBITPACK',
                  'sa',
                  'bit',
                  'mssql',
                  51983) = true then
             begin

             end
             else
             begin
                    showmessage('BIT conn check.'+#10+#13+configvalue.varImageIp);
             end;
         {$ENDIF DEBUG}

          result:= true;

     end
     else
     begin
         showmessage('Required environment set.');
         application.Terminate;
     end;

   end
   else
   begin
      showmessage('Required environment set.');
      application.Terminate;
   end;


  except
         on E: Exception do
          begin
               result:= false;
               showmessage(E.Message + 'Required environment set.');
          end;
  end;

end;


procedure TorderInfo_f.edtChkListClick(Sender: TObject);
begin
     SetImeInputMode(edtChkList.Handle  , imHangul);
end;

procedure TorderInfo_f.edtChkListContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

  RichEditPopupMenu(TRichEdit(Sender));
  Handled := true;
end;

procedure TorderInfo_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
    path     : string;
    FormInit : TIniFile;
begin
     if Application.MessageBox(
                pchar( 'MEDIRO RADIOLOGY OCS를 종료 하시겠습니까?'), 'MEDIRO RADIOLOGY OCS 종료 확인', MB_YESNO) <> 6 then   //yes : 6 No : 7
          begin
               canClose := false;
               exit;

          end;


     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

//     FormInit.WriteInteger('splitInfo', 'Ocs_pnlRightWidth', PnlRight.Width);
     FormInit.WriteInteger('splitInfo', 'Ocs_PnlXrayHeight', PnlXray.Height);
     FormInit.WriteInteger('splitInfo', 'Ocs_pnlCTHeight',  pnlCT.Height);
     FormInit.WriteInteger('splitInfo', 'Ocs_pnlPtHeight', pnlPt.Height);
     FormInit.WriteInteger('splitInfo', 'Ocs_pnlBtHeight', pnlBt.Height);
     FormInit.WriteInteger('splitInfo', 'Ocs_pnlScHeight', pnlSc.Height);
     FormInit.Free;

end;

procedure TorderInfo_f.FormCreate(Sender: TObject);
begin
     if not DirectoryExists(extractFilepath(paramstr(0))+'posInfo') then
         ForceDirectories(extractFilepath(paramstr(0))+'posInfo');

end;

procedure TorderInfo_f.FormShow(Sender: TObject);
var
    path     : string;
    FormInit : TIniFile;
begin
     caption:= '검사';

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     //PnlRight.Width:=  FormInit.ReadInteger('splitInfo', 'Ocs_pnlRightWidth', 400 );
     PnlXray.Height:= FormInit.ReadInteger('splitInfo', 'Ocs_PnlXrayHeight',400 );
     pnlCT.Height:= FormInit.ReadInteger('splitInfo', 'Ocs_pnlCTHeight', 300);
     pnlPt.Height := FormInit.ReadInteger('splitInfo', 'Ocs_pnlPtHeight',300);
     pnlBt.Height := FormInit.ReadInteger('splitInfo', 'Ocs_pnlBtHeight',300);
     pnlSc.Height := FormInit.ReadInteger('splitInfo', 'Ocs_pnlScHeight',300);
     FormInit.Free;



     if loadini = true then
     begin


         //   configvalue := Tconfigvalue.Create;
            configvalue.LoadGlobalData_ini;  //ini정보를 열자.




         if dm_f.ConnectDatabase(configvalue.varDbip,
              configvalue.varDbname,
              configvalue.varDbuser,
              configvalue.varDbpass,
              configvalue.varDbProtocol,
              configvalue.varDbPort) = true then
         begin
               //serverkind := 0;
               configvalue.LoadGlobalData_db;
               configvalue.LoadQueryFunc(configvalue.varDbProtocol);

         end;

     end;


    if ConnectBitServer = true then
    begin
          statusbar1.Panels[0].Text := 'Database Connected';
    end
    else
    begin
          statusbar1.Panels[0].Text := 'Database not Connected';
    end;


     datetimepicker1.Date  := now;
     datetimepicker2.Date  := now;

    if  edtInterval.IntValue <= 0  then
        edtInterval.IntValue := 5;

    cbAutoRefresh.Checked := true;
    timer1.interval := edtInterval.IntValue * 1000 ;
    timer1.enabled:= true;

    lblVersion.Caption := 'Ver. '+ GetExeVersion(paramstr(0)) ;//


end;


procedure TorderInfo_f.grdCtClickCell(Sender: TObject; ARow, ACol: Integer);
var
     aChart, aName : string;
     btnRect : TRect;
begin


     btnRect := (sender as TAdvStringGrid).CellRect(ACol, Arow);


     //위치 지정
     with pnlVitalinfo do
     begin

        Left :=   btnRect.right+ (sender as TAdvStringGrid).Parent.left;//+ btnRect.left;
        top  :=   btnRect.Top
                  + (sender as TAdvStringGrid).margins.top
             //     +  (sender as TAdvStringGrid).RowHeights[0]
                  +  ((sender as TAdvStringGrid).Parent as TadvPanel).Caption.Height+
                  + (sender as TAdvStringGrid).Parent.top  ;// +( btnRect.Bottom- btnRect.Top);
       // width :=  btnRect.right -  btnRect.left ;
     end;

      pnlVitalinfo.Visible := false;

      aChart:=    (sender as TAdvStringGrid).Cells[2, ARow] ;
      aName :=    (sender as TAdvStringGrid).Cells[3, ARow] ;

      LoadChkList(edtChkList, aChart);


      if  trim(edtChkList.Text) <> '' then
      begin
        pnlVitalinfo.Caption.Text :='기초검사항목-'+ aName
                             +'(' + aChart  +')' ;

        pnlVitalinfo.bringToFront;
        pnlVitalinfo.Visible := true;
      end;


end;

procedure TorderInfo_f.grdCtGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if ((sender as TadvStringGrid).Cells[17, ARow] <> '')
         and (ARow > 0) then
      begin
        ABrush.Color := clYellow;
        AFont.Color  := clBlue;
      end;
end;

procedure TorderInfo_f.grdCtGridHint(Sender: TObject; ARow, ACol: Integer;
  var hintstr: string);
begin

    hintstr:= (sender as TadvStringGrid).Cells[17, aRow];

end;

procedure TorderInfo_f.grdCtRightClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
       pos: tpoint;
begin
       (sender as TAdvStringGrid).PopupMenu := popupmenu1;

     //   GetCursorPos(Pos);
     //   popupmenu1.Popup(pos.x, pos.y);
end;

procedure TorderInfo_f.N1Click(Sender: TObject);
var
   pop:TPopupMenu;
   advStringGrid : TadvStringGrid;
begin

  // Firstly get parent TPopupMenu (needs casting from TMenu)
  pop:= TPopupMenu(N1.GetParentMenu());
  // pop.PopupComponent is the "source" control, just cast it to TadvStringGrid
  advStringGrid :=  TadvStringGrid(pop.PopupComponent);
  takenUpdate(advstringGrid);

end;

procedure TorderInfo_f.N3Click(Sender: TObject);
var
   pop:TPopupMenu;
   advStringGrid : TadvStringGrid;
begin

  // Firstly get parent TPopupMenu (needs casting from TMenu)
  pop:= TPopupMenu(N1.GetParentMenu());
  // pop.PopupComponent is the "source" control, just cast it to TadvStringGrid
  advStringGrid :=  TadvStringGrid(pop.PopupComponent);
  takenUpdate_Cancel(advstringGrid);

end;

procedure TorderInfo_f.pnlCTCaptionDBlClick(Sender: TObject);
begin
          (sender as TAdvpanel).Height := 100;
end;

procedure TorderInfo_f.takenUpdate(aGrid:TadvstringGrid);
var
      tempQuery: TuniQuery;
      tempQuery2: TuniQuery;
      nRow , i: integer;
begin


         try
          tempQuery := TuniQuery.Create(self);
          tempQuery.Connection  := Dm_f.UniConnectionBIT;

           for i := 0 to aGrid.SelectedRowCount-1 do
          begin
             nRow := aGrid.SelectedRow[i];

             with tempQuery do
             begin

                 close;
                 sql.Clear;
                 sql.Text := 'update [mediroPACK].[dbo].[orderInf]  set  taken=''1''  where orderID =:orderID   ';
                 paramByName('orderID'     ).AsString  := aGrid.Cells[16, nRow]    ;
                 execsql;

                 aGrid.Cells[1, nRow] :='+' ;

             end;
           end;


         finally
             tempQuery.Free;
         end;

end;


procedure TorderInfo_f.takenUpdate_cancel(aGrid:TadvstringGrid);
var
      tempQuery: TuniQuery;
      tempQuery2: TuniQuery;
      nRow , i: integer;
begin


         try
          tempQuery := TuniQuery.Create(self);
          tempQuery.Connection  := Dm_f.UniConnectionBIT;


           for i := 0 to aGrid.SelectedRowCount-1 do
          begin
             nRow := aGrid.SelectedRow[i];
             with tempQuery do
             begin

                 close;
                 sql.Clear;
                 sql.Text := 'update [mediroPACK].[dbo].[orderInf]  set  taken=''0''  '+#10+
                             'where orderID =:orderID   ';
                 paramByName('orderID'     ).AsString  := aGrid.Cells[16, nRow]    ;
                 execsql;

                 aGrid.Cells[1, nRow] :='' ;

             end;
          end;
         finally
             tempQuery.Free;
         end;

end;




procedure TorderInfo_f.Timer1Timer(Sender: TObject);
begin
     AllRefresh;
end;

end.



xRay:'(''XA'', ''XRAY'',''DR'',''MG'',''DT'', ''EKG'',''OT'',''RF'', ''MED'') ';
EKG :'(''SC'') ';
Sono:'(''US'', ''SONO'') ';
CT  :'(''CT'',''JOC'') ';   //JOC 조영제
BT  :'(''LAB'') ';
MRI :'(''MR'', ''MRI'',''JOM'') '; //JOM 조영제
CD  :'(''CD'', ''CR'') ';
MSS :'(''MSS'') ';

