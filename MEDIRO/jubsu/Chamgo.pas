unit Chamgo;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids,
  AdvObj, BaseGrid, AdvGrid, AdvUtil;

type
     TChamgo_f = class(TForm)
          Memo1: TMemo;
          plbottom: TPanel;
          Shape1: TShape;
          Shape2: TShape;
          Shape3: TShape;
          pltop: TPanel;
          plgird: TPanel;
          Label1: TLabel;
    BtnConfirm: TButton;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    spSkinButton4: TButton;
    dtToday: TDateTimePicker;
    grdWhisper: TAdvStringGrid;
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure BtnConfirmClick(Sender: TObject);
          procedure spSkinButton1Click(Sender: TObject);
          procedure spSkinButton2Click(Sender: TObject);
          procedure spSkinButton3Click(Sender: TObject);
          procedure dtTodayChange(Sender: TObject);
          procedure spSkinButton4Click(Sender: TObject);
    procedure grdWhisperClickCell(Sender: TObject; ARow, ACol: Integer);
     private
          { Private declarations }
          procedure GrdSet;

     public
          { Public declarations }
          procedure chamgoload(varchart: string);
     end;

var
     Chamgo_f: TChamgo_f;

implementation

uses uDM, uMain, uGogekData;

{$R *.dfm}

procedure Tchamgo_f.GrdSet;
begin
    grdWhisper.rowcount:= 1;

     with dm_f.SqlWork do
     begin

          Close;
          Sql.Clear;
          Sql.Add('select * from ma_whisperList');
          Sql.Add('Where Chart=:Chart');
          Sql.Add('order by whisperDate DESC');
          paramByName('Chart').AsString := main_f.edtChart.text;
          open;
          first;
          while not eof do
          begin
               grdWhisper.addrow;
               grdWhisper.cells[1, grdWhisper.rowcount - 1] := fieldByname('whisperDate').asString;
               grdWhisper.cells[2, grdWhisper.rowcount - 1] := fieldByname('whisperDoc').asString;
               next;
          end;
     end;
     grdWhisper.AutoNumberCol(0);
end;

procedure Tchamgo_f.chamgoload(varchart: string);
begin
     if varchart <> '' then
     begin
          caption := '귓속말';
          memo1.text := '';
          with dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select top 1 whisperDoc  From ma_whisperList');
               Sql.Add('Where Chart=:Chart');
               Sql.Add('order by whisperDate desc');
               paramByName('Chart').AsString := varchart;
               Open;
               last;
               if Recordcount > 0 then
                    Memo1.text := FieldByName('whisperDoc').AsString
               else
                    Memo1.text := '';
          end;
     end;
end;

procedure TChamgo_f.FormShow(Sender: TObject);
begin
     dttoday.Date := now;

     //main_f.GridSet(grdWhisper, false, plgird, alclient, 0, 0, 0, 0);
     grdwhisper.Align := alClient;
     plgird.Visible := false;
     chamgoload(main_f.edtChart.text);

end;

procedure TChamgo_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := Cafree;
end;

procedure TChamgo_f.FormDestroy(Sender: TObject);
begin

     Chamgo_f := nil;

end;

procedure TChamgo_f.BtnConfirmClick(Sender: TObject);
begin

     if memo1.text <> '' then
     begin
          try

               with dm_f.sqlWork do
               begin

                    Close;
                    Sql.Clear;
                    Sql.Add('select * from ma_whisperList');
                    Sql.Add('Where Chart=:Chart and WhisperDate=:whisperDate');
                    paramByName('whisperDate').AsString := formatdatetime('YYYY-MM-DD',dttoday.date);
                    paramByName('Chart').AsString := main_f.edtChart.text;
                    open;
                    if isEmpty then
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('insert into ma_whisperList');
                         Sql.Add('(chart, WhisperDoc, whisperDate) values');
                         Sql.Add('(:chart, :WhisperDoc, :whisperDate)');
                         paramByName('whisperDate').AsString := formatdatetime('YYYY-MM-DD',dttoday.date);
                         paramByName('Chart').AsString := main_f.edtChart.text;
                         paramByName('whisperDoc').AsMemo := Memo1.text;
                         execsql;
                         grdset;
                    end
                    else
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_whisperList set');
                         Sql.Add(' WhisperDoc=:WhisperDoc');
                         Sql.Add('Where Chart=:Chart and WhisperDate=:whisperDate');
                         paramByName('whisperDate').AsString := formatdatetime('YYYY-MM-DD',dttoday.date);
                         paramByName('Chart').AsString := main_f.edtChart.text;
                         paramByName('whisperDoc').AsMemo := Memo1.text;
                         execsql;
                         grdset;
                    end;
               end;

               // gogek_f.memChamgo2.Text := Memo1.text;
                //  if Memo1.text <> '' then
                 //      gogek_f.memChamgo2.Font.Color := ClGreen;
               ShowMessage('저장되었습니다.');

               //          Close;

          except
               on E: Exception do
               begin
                    ShowMessage('저장에 실패하였습니다.' + #13#10 + E.Message);
               end;
          end;
     end;
end;

procedure TChamgo_f.spSkinButton1Click(Sender: TObject);
begin
     if plgird.Visible = true then
     begin
          grdset;
          plgird.Visible := false;
     end
     else
     begin
          grdset;
          plgird.Visible := true;
     end;

     {
          whisperList_f := TwhisperList_f.Create(application);
          whisperList_f.Showmodal;
          whisperList_f.top := chamgo_f.top + chamgo_f.height;
          whisperList_f.left := chamgo_f.left;
     }
end;

procedure TChamgo_f.spSkinButton2Click(Sender: TObject);
begin
     {  with dm_f.sqltemp do
       begin
         close;
         sql.Clear;
         sql.add('select * from newon');
         sql.Add('where chart=:chart and jin_day=:jin_day');
         parambyname('chart').AsString := main_f.edtChart.text;
         parambyname('jin_day').AsString := FormatDateTime('YYYY-MM-DD', now);
         open;
         first;
         if not isEmpty then
            begin
               with DM_f.SqlWork do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('update  Newon set');
                    Sql.Add('gubun=:gubun,');
                    Sql.Add(' sunaptime=:jinstime');
                    Sql.Add('where chart=:Chart and jin_day=:jin_day');
                    ParamByName('Gubun').AsString := '2';
                    ParamByName('Jin_Day').AsString := FormatDateTime('YYYY-MM-DD', now);
                    ParamByName('JinsTime').asDateTime := now;
                    ParamByName('Chart').AsString := main_f.edtChart.text;
                    execSql;
                    dm_f.sqlWork.Close;
               end;
               main_f.DaegiSelectData(main_f.GrdDaegi,main_f.cbDaegiKind,main_f.cbDaegiTeam,FormatDateTime('YYYY-MM-DD', now));
     //          DaegiSelectData(grdDaegi, cbDaegiKind, cbDaegiTeam, formatDateTime('YYYY-MM-DD', dtToday.date));
                dm_f.DaegiSync;

     //         yeyak_f.grdMain.Refresh;
                dm_f.YeyakSync;

           //Yeyak Update
                with Dm_f.SqlWork do
                begin
                     Close;
                     Sql.Clear;
                     Sql.Add('update yeyak set');
                     Sql.Add('Ypos=:Ypos');
                     Sql.Add('Where YChartNo=:YChartNo');
                     Sql.Add(' and YDamTeam =:YDamTeam');
                     Sql.Add('and YDay=:Yday');
                     Sql.Add('and yCancel <> :ycancel');
                     Sql.Add('and yCancel <> :ycancel2');
                     ParamByName('YCHARTNO').AsString := main_f.edtChart.text;
                     ParamByName('YDAMTEAM').AsString := main_f.gogekTeam;
                     ParamByName('YDAY').AsString := FormatDateTime('YYYY-MM-DD', now);
                     ParamByName('YCancel').AsString := 'C';
                     ParamByName('YCancel2').AsString := 'R';
                     ParamByName('YPos').AsString := 'Y'; // varState; //'Y';
                     ExecSQL;
                end;
           //Jinryo_p Update
                with Dm_f.sqlwork do
                begin
                     close;
                     SQL.Clear;
                     SQL.Add('Update Jinryo_p Set');
                     SQL.Add('sunap=:sunap');
                     Sql.Add('Where chart=:chart and jin_day=:jin_day and jin_gu=''0''');
                     ParamByName('chart').AsString := main_f.edtChart.text;
                     ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD', now);
                     ParamByName('sunap').AsString := '2';
                     ExecSQL;
                end;

                main_f.grdDaegi.Refresh;

            end
           else showmessage('내원 하지 않은 환자 입니다');

       end;

       dm_f.sqlTemp.Close;
       close;
      }
end;

procedure TChamgo_f.spSkinButton3Click(Sender: TObject);
begin
     if MessageDlg (formatdatetime('YYYY',dttoday.date) + '년 ' +
          formatdatetime('MM',dttoday.date) + '월 ' +
          formatdatetime('DD',dttoday.date)+
          '일의 귓속말을 삭제하시겠습니까?',
          mtConfirmation, mbOkCancel, 0)
          = mrOk then
     begin

          with dm_f.sqlwork do
          begin
               close;
               sql.clear;
               sql.add('delete from ma_whisperList');
               sql.add('where chart=:chart and whisperdate=:whisperdate');
               parambyname('chart').asstring := ma_chart;
               parambyname('whisperdate').asstring := formatdatetime('YYYY-MM-DD',dttoday.date);
               ExecSQL;
               grdset;
          end;
     end;
end;

procedure TChamgo_f.dtTodayChange(Sender: TObject);
begin
     memo1.Text := '';
     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.add('select * from ma_whisperList');
          sql.add('where chart=:chart and whisperdate=:whisperdate');
          parambyname('chart').asstring := main_f.edtChart.text;
          parambyname('whisperdate').asstring := formatdatetime('YYYY',dttoday.date);
          open;
          first;
          if not isEmpty then
          begin
               memo1.Text := fieldbyname('whisperDoc').AsString;
          end;
     end;
end;

procedure TChamgo_f.spSkinButton4Click(Sender: TObject);
var
   filePath : string;

begin
    filePath := extractFilePath(paramStr(0)) + 'icons\whisper\';


     if trim(memo1.text) <> '' then //귀속말이 있는경우
     begin
         main_f.btnWhisper.Picture.LoadFromFile( filePath  + 'alret\megaphone_normal.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureDown.LoadFromFile( filePath  + 'alret\megaphone_click.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureHot.LoadFromFile( filePath  + 'alret\megaphone_hover.jpg' );// . ImageIndex := 99 ;
     end
     else
     begin
         main_f.btnWhisper.Picture.LoadFromFile( filePath  + 'normal\megaphone_normal.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureDown.LoadFromFile( filePath  + 'normal\megaphone_click.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureHot.LoadFromFile( filePath  + 'normal\megaphone_hover.jpg' );// . ImageIndex := 99 ;
      //   main_f.btnWhisper.ImageIndex := 60;
     end;

     close;
end;

procedure TChamgo_f.grdWhisperClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
 if grdwhisper.Rowcount > 1 then
     begin
          if grdwhisper.Cells[1, aRow] <> '' then
          begin
               memo1.Text := grdwhisper.Cells[2, arow];
               dttoday.Date := strToDatetime(grdwhisper.Cells[1,arow]);
          end;
     end;
end;

end.

