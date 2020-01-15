unit uGogekData_Find;

interface
uses
     Forms,
     SysUtils,
     Dialogs,
     Classes,
     IniFiles,
   {$IFDEF MSWINDOWS}
     Windows, ShellApi,
    {$ENDIF}
    {$IFDEF POSIX}
    Posix.SysSysctl,
    {$ENDIF}

     Controls,
     ComCtrls,
     stdCtrls,  math,
     ExtCtrls, JPEG, graphics,
     AdvProgressBar,
     colCombo,
     advEdit,
     Vcl.CheckLst, AdvGrid,
     Winsock,

     uni, db,


     IdHTTP, IdURI,
     IdFTP, IdFTPList, IdFTPCommon,   IdGlobal;

function FindJuso(TargetZip: string): string;
function FindDDD(TargetJuso: string): string;
function FindZip(TargetJuso: string): string;

function FindZip_new(TargetJuso: string): string;
procedure LoadPostCombo(varDong:string;varKind:string; varCombobox:Tcombobox) ;
function FindZip_new_Sido(varKind, DongStr, Sido, siGunGu, upMyun, Doro, jibun: string): string;

function FindPibo(TargetPibo: string): string;
function FindJohap(TargetJohap: string): string;
function LoadReferer_name(SogejaName: string; pRecordCount: integer; chk:
     string): string;

function LoadSogeData_name(SogejaName: string; varStatusBar: TadvProgressbar):
     integer;

function LoadGogekData_name(Chart: string; varStatusBar: TadvProgressbar; Gubun: integer = 0; viewAll: boolean = false):
     integer;
function LoadGogekData_jumin(jumin: string; varStatusBar: TadvProgressbar; viewAll: boolean = false):
     boolean;
function LoadReferHosp(HospName: string; varStatusBar: TadvProgressbar):
     integer;

procedure FastFileCopyCallBack(Position, Size: Longint; filename: string);

const
   ageFilterQry =
        'select DISTINCT chart from ma_gogek_basic                                '  +#10#13+
        'where                                                                    '  +#10#13+
        ' case when isNumeric(jumin) = 1 then                                     '  +#10#13+
        ' Cast(Year(GetDate()) As Integer) -                                      '  +#10#13+
        '         Cast(SubString((                                                '  +#10#13+
        '         Case  When SubString(jumin, 7, 1) = ''1'' Then ''19'' + jumin   '  +#10#13+
        '               When SubString(jumin, 7, 1) = ''2'' Then ''19'' + jumin   '  +#10#13+
        '               When SubString(jumin, 7, 1) = ''3'' Then ''20'' + jumin   '  +#10#13+
        '               When SubString(jumin, 7, 1) = ''4'' Then ''20'' + jumin   '  +#10#13+
        '               When SubString(jumin, 7, 1) = ''5'' Then ''19'' + jumin   '  +#10#13+
        '               When SubString(jumin, 7, 1) = ''6'' Then ''19'' + jumin   '  +#10#13+
        '               When SubString(jumin, 7, 1) = ''7'' Then ''20'' + jumin   '  +#10#13+
        '               When SubString(jumin, 7, 1) = ''8'' Then ''20'' + jumin   '  +#10#13+
        '         Else ''20'' + jumin End),1,4) As Integer)                       '  +#10#13+
        ' else 0 end  >= 20                                                       ';


var
     varOfficeGubunArray: array[0..19] of string =
         ( '',
         '�ʵ��б� 1�г�',
         '�ʵ��б� 2�г�',
         '�ʵ��б� 3�г�',
         '�ʵ��б� 4�г�',
         '�ʵ��б� 5�г�',
         '�ʵ��б� 6�г�',
          '���б� 1�г�',
          '���б� 2�г�',
          '���б� 3�г�',
          '����б� 1�г�',
          '����б� 2�г�',
          '����б� 3�г�',
          '���б� 1�г�',
          '���б� 2�г�',
          '���б� 3�г�',
          '���б� 4�г�',
          '���п� 1�г�',
          '���п� 2�г�',
          '���п� 3�г�'
          );


implementation
uses uConfig, uDm, uFunctions, uGogekData, uSysinfo,  uJinryoCalc,
//     uHLClass, uTcpCs,
     findPost, findPost_new, findGogek, FindSoge, uReferHospChoice,
     wait2;



function FindJuso(TargetZip: string): string;
begin
     //�����ȣ ã��
     if TargetZip <> '' then
     begin
          with Dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from post');
               Sql.Add('Where zipcode=:ZIpcode');
               ParamByName('ZipCode').AsString := TargetZip;
               Open;
               if not isEmpty then
                    Result := FieldByName('ZipCode').AsString
                         + '^'
                         + ' ' + Trim(FieldByName('Sido').AsString)
                         + ' ' + Trim(FieldByName('GuGun').AsString)
                         + ' ' + Trim(FieldByName('DOng').AsString)
                         + '^'
                         + ' ' + Trim(FieldByName('Ri').AsString)
                         + ' ' + Trim(FieldByName('Bunji').AsString);
               exit;
          end;
     end;
end;

function FindDDD(TargetJuso: string): string;
var
     SrcJuso,
          SeekStr: string;

begin
     if targetJuso <> '' then
     begin
          // DDD ��ȣ ã�ƿ���
          SrcJuso := Trim(TargetJuso);
          SeekStr := copy(SrcJuso, 1, 4);

          with DM_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Select * From DDD Where City = :City');
               ParamByName('City').AsString := SeekStr;
               Open;
               Result := FieldByName('Code').AsString;
          end;
     end;
end;

//ȯ�ڷ� ��ϵ��� ���� �Ұ��� ma_gogek_referer���� �ҷ�����

function LoadReferer_name(SogejaName: string; pRecordCount: integer; chk:
     string): string;
const
     SelectReferer = 'select * from ma_gogek_referer';
     SelectReferer_where1 =
          'where name like :name+''%'' and name is not null ';
     SelectReferer_where2 = 'where chart = :chart';
var
     varChart: string;

     RecCount, roC, i: integer;
     stime: integer;

begin
     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          sql.text := SelectReferer;
          sql.text := sql.Text + selectReferer_where1;
          ParamByName('Name').AsString := SogejaName;
          //SQL.Add('Order by name' + ',' + 'jumin');
          SQL.Add('Order by name');
          Open;
          if not IsEmpty then
          begin
               recCount := recordCount + pRecordCount; //����
               //ShowMessage('RecordCount: ' + inttostr(recordCount) + ',' + 'RecCount: ' + inttostr(RecCount));//<--Go
               application.ProcessMessages;

               //varStatusbar.Position := 0;
               //varStatusbar.ShowPercentage := true;
              // varStatusbar.Max := RecCount;
               //varStatusbar.Min := 0;

               chk := '1';
               result := '1';
               if not assigned(FindSoge_f) then
               begin
                    FindSoge_f := TFindSoge_f.Create(application);
               end;

               with findSoge_f do
               begin
                    //lbltime.Caption := '�˻��ҿ�ð�:' + inttostr(gettickCount -
                    //     stime) + 'ms';
                    grdFind.RowCount := recCount + 1;
                    grdFind.FixedRows := 1;
                    while not dm_f.SqlWork.Eof do
                    begin
                         with grdFind do
                         begin
                              //ShowMessage('pRecordcount: ' + inttostr(precordcount) + ', recCount: ' + inttostr(recCount));//<--Go
                              for i := pRecordCount + 1 to recCount do

                              begin
                                   //  AddRow;
                                     {
                                      ��Ʈ
                                      ����
                                      ����
                                      ����
                                      ����
                                      �ּ�
                                      ����ȭ
                                      �޴���  }

                               //    Cells[1, i] :=
                                   Cells[1, i] :=
                                        FieldByName('Chart').AsString;

                                   Cells[2, i] :=
                                        FieldByName('Name').AsString;
                                   Cells[3, i] := '';
                                   //jumintogender(FieldByName('jumin').AsString);
                                   Cells[4, i] := '';
                                   //juminToBirth2(FieldByName('Jumin').AsString);
                                   Cells[5, i] := '';
                                   //juminTonai(FieldByName('Jumin').AsString);
                                   Cells[6, i] :=
                                        FieldByName('address').AsString;
                                   Cells[7, i] :=
                                        FieldByName('hphone').AsString;
                                   Cells[8, i] :=
                                        FieldByName('cphone').AsString;
                                   Cells[9, i] :=
                                        FieldByName('id').AsString;

                                   dm_f.SqlWork.next;
                                   // application.ProcessMessages;
                                   //varStatusbar.position := i;
                              end;
                              // autosizecolumns(false, 10);
                              autonumbercol(0);

                         end; // with grdFind

                    end; //dm_f.WorkSql.Eof
                    grdFind.SortSettings.AutoFormat := true;
                    //.SingleColumn:=true;
                    grdfind.SortIndexes.Clear;
                    grdfind.SortIndexes.Add(2);
                    grdfind.QSortIndexed;
                    //grdFind.SortByColumn(2);
         //           grdFind.AutoNumberCol(0);
               end; //findsoge_F
          end //isEmpty
          else
          begin
               chk := '0';
               result := '0';
          end;

     end; //dm_f.Sqlwork

end;

{�Ұ��� ������ �ε��ϴ� �Լ�}

function LoadSogeData_name(SogejaName: string; varStatusBar: TadvProgressbar):
     integer;
const
     SelectSogeja = 'select * from view_gogek';
     SelectSogeja_where1 = ' where name like :name+''%''';
     SelectSogeja_where2 = ' where chart = :chart';

var
     varChart: string;
     referer_id: integer;
     referChk, chk1: string;
     RecCount, roC, i: integer;
     stime: integer;
begin
     //result 1: ok
     //result 2: close
     //result 3: New
     roc := 1;
     stime := GetTickCount;
     referChk := '0';
     chk1 := '0';

     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          sql.text := SelectSogeja;
          sql.text := sql.Text + selectSogeja_where1;
          ParamByName('Name').AsString := SogejaName;
          //SQL.Add('Order by name' + ',' + 'jumin');
          SQL.Add('Order by name,jumin');
          Open;
          if not IsEmpty then //�켱 �������� ã�´�(view_gogek)
          begin
               recCount := recordCount;
               application.ProcessMessages;

               varStatusbar.Position := 0;
               varStatusbar.ShowPercentage := true;
               varStatusbar.Max := RecCount;
               varStatusbar.Min := 0;

               referChk := '1';

               if not assigned(FindSoge_f) then
               begin
                    FindSoge_f := TFindSoge_f.Create(application);
               end;

               with findSoge_f do
               begin
                    lbltime.Caption := '�˻��ҿ�ð�:' +
                         inttostr(gettickCount -
                         stime) + 'ms';
                    grdFind.RowCount := recCount + 1;
                    grdFind.FixedRows := 1;
                    while not dm_f.SqlWork.Eof do
                    begin
                         with grdFind do
                         begin

                              for i := FixedRows to RowCount - 1 do

                              begin
                                   //  AddRow;
                                     {
                                      ��Ʈ
                                      ����
                                      ����
                                      ����
                                      ����
                                      �ּ�
                                      ����ȭ
                                      �޴���  }

                                   Cells[1, i] :=
                                        FieldByName('Chart').AsString;
                                   Cells[2, i] :=
                                        FieldByName('Name').AsString;
                                   Cells[3, i] :=
                                        jumintogender(FieldByName('jumin').AsString);
                                   Cells[4, i] :=
                                        juminToBirth2(FieldByName('Jumin').AsString);
                                   Cells[5, i] :=
                                        juminTonai(FieldByName('Jumin').AsString);
                                   Cells[6, i] :=
                                        FieldByName('h_Juso').AsString;
                                   Cells[7, i] :=
                                        FieldByName('h_phone').AsString;
                                   Cells[8, i] :=
                                        FieldByName('c_phone').AsString;
                                   Cells[9, i] :=
                                        '0'; //  FieldByName('refer_id').AsString;   //by son..  ȯ�ڸ�ܿ��� ã�µ� �Ұ���id�� �ʿ����������?

                                   dm_f.SqlWork.next;
                                   // application.ProcessMessages;
                                   varStatusbar.position := i;
                              end; //for
                              // autosizecolumns(false, 10);
                              autonumbercol(0);

                         end; //with

                    end; //while
                    //grdFind.SortByColumn(6);

                    //ShowMessage(IntToStr(RecCount));//<-Go
                    LoadReferer_name(SogejaName, RecCount, chk1);

                    lblCount.Caption := inttostr(grdFind.RowCount - 1) +
                         '���� �˻��Ǿ����ϴ�.';
                    //grdFind.Row := 3;
                    lblshowtime.Caption := 'ȭ��ǥ�ýð�:' +
                         inttostr(gettickCount -
                         stime) + 'ms';
                    result := ShowModal;
                    case result of
                         1: //mrOk
                              begin
                                   varStatusbar.position := 0;
                                   varStatusbar.ShowPercentage :=
                                        False;

                                   VarChart := Grdfind.Cells[1, grdFind.Row];
                                   //�߿� chart : key��  unique �Ӽ�
                                   SogejaName := GrdFind.Cells[2, grdFind.Row];
                                   //�񳻿� �Ұ��� �̸�
                                   referer_id :=
                                        StrToInt(Grdfind.Cells[9,
                                        grdfind.Row]);
                                   //�Ұ���  ID

                                   ma_SogeIdn := referer_id; //0;
                                   ma_SogeName := sogejaname;
                                   ma_SogePhone := GrdFind.Cells[8, grdFind.Row]; //c_phone
                                   ma_SogeChart := VarChart;
                              end;
                         2: //mrCancel
                              begin
                                   varStatusbar.position := 0;
                                   varStatusbar.ShowPercentage :=
                                        False;
                              end;
                         6: //mrYes  ���ε��
                              begin
                                   varStatusbar.position := 0;
                                   varStatusbar.ShowPercentage :=
                                        False;
                                   referChk := '0';
                              end;
                    end; //case

               end; //with

          end
          else //�������� ������ �Ұ��ڿ��� ã�´� (ma_gogek_referer)
          begin
               chk1 := LoadReferer_name(SogejaName, 0, chk1);

               if chk1 = '0' then
               begin
                    referChk := '0';
               end
               else
               begin

                    with findSoge_f do
                    begin

                         if grdFind.RowCount > 0 then
                         begin
                              referChk := '1';
                              lblCount.Caption :=
                                   inttostr(grdFind.RowCount - 1)
                                   +
                                   '���� �˻��Ǿ����ϴ�.';
                              //grdFind.Row := 3;
                              lblshowtime.Caption := 'ȭ��ǥ�ýð�:'
                                   +
                                   inttostr(gettickCount -
                                   stime) + 'ms';
                              result := ShowModal;
                              case result of
                                   1: //mrOk
                                        begin
                                             varStatusbar.position
                                                  := 0;
                                             varStatusbar.ShowPercentage
                                                  := False;

                                             VarChart :=
                                                  Grdfind.Cells[1,
                                                  grdFind.Row];
                                             //�߿� chart : key��  unique �Ӽ�
                                             SogejaName :=
                                                  GrdFind.Cells[2,
                                                  grdFind.Row];
                                             //�񳻿� �Ұ��� �̸�
                                             referer_id :=
                                                  StrToInt(Grdfind.Cells[9, grdfind.Row]);
                                             //�Ұ���  ID
                                             ma_SogeIdn :=
                                                  referer_id;
                                             ma_SogeName :=
                                                  sogejaname;

                                             ma_sogePhone:= GrdFind.Cells[8, grdFind.Row];
                                             ma_SogeChart := VarChart;
                                        end;
                                   2: //mrCancel
                                        begin
                                             varStatusbar.position
                                                  := 0;
                                             varStatusbar.ShowPercentage
                                                  := False;
                                        end;
                                   6: //mrYes  ���ε��
                                        begin
                                             varStatusbar.position
                                                  := 0;
                                             varStatusbar.ShowPercentage
                                                  := False;
                                             referChk := '0';
                                        end;
                              end; //case

                         end; //if

                    end; //with

               end;

          end; //else

          if referChk = '0' then
          begin
               if
                    Application.MessageBox(PChar('���ο� �Ұ��ڸ� ����Ͻðڽ��ϱ�?'),
                    '�Ұ��ڵ��', MB_YESNO) = IDYES then
               begin
                    result := 6;
               end
               else
               begin
                    result := 2;
               end;
          end;

     end; //with
end;


function FindZip(TargetJuso: string): string;
var
     SrcJuso, DongStr, DongOth, DelDoStr: string;
     SeekPosX1, SeekPosX2, SeekPosX3, DongLen: Integer;
     recCount, i: integer;
begin
     if TargetJuso <> '' then
     begin
          //==== ���� ã�ƿ��� (����� üũ) =======//

             // '---��' ��Ʈ�� ����

          DelDoStr := Trim(TargetJuso);

          DongStr := '';

          SrcJuso := DelDoStr;

          SeekPosX1 := Pos(' ', copy(SrcJuso, 1, length(SrcJuso)));
          if SeekPosX1 > 0 then
          begin
               SeekPosX2 := Pos(' ', Copy(SrcJuso, SeekPosX1 + 1,
                    Length(SrcJuso)));
               if SeekPosX2 > 0 then
               begin
                    SeekPosX3 := Pos(' ', Copy(SrcJuso, SeekPosX1 +
                         SeekPosX2 +
                         1,
                         Length(SrcJuso)));
                    if SeekPosX3 > 0 then
                    begin
                         DongLen := (SeekPosX1 + SeekPosX2 + SeekPosX3
                              - 1)
                              -
                              (SeekPosX1 +
                              SeekPosX2 + 1) + 1;
                         DongOth := Copy(SrcJuso, SeekPosX1 + SeekPosX2
                              +
                              SeekPosX3,
                              Length(SrcJuso) - SeekPosX1 + SeekPosX2
                              +
                              SeekPosX3
                              + 1);
                    end
                    else
                         Donglen := Length(SrcJuso) - (SeekPosX1 +
                              SeekPosX2);
                    DongStr := copy(SrcJuso, (SeekPosX1 + SeekPosX2 +
                         1),
                         DongLen);
               end;
          end
          else
               DongStr := SrcJuso;

          with DM_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Select Seq, ZipCode, Sido, GuGun, Dong,Ri, Bunji From ma_post');
               Sql.Add('Where DONG like :name');
               ParamByName('name').AsString := DongStr + '%';

               Open;
               if not isEmpty then
               begin
                    recCount := recordCount;

                    if not Assigned(findpost_f) then
                         findpost_f :=
                              Tfindpost_f.Create(application);

                    with findpost_f do
                    begin
                         grdpost.RowCount := recCount + 1;
                         grdpost.FixedRows := 1;

                         with grdpost do
                         begin

                              for i := FixedRows to RowCount - 1 do

                              begin
                                   Cells[1, i] :=
                                        FieldByName('Seq').AsString;
                                   Cells[2, i] :=
                                        FieldByName('Zipcode').AsString;
                                   Cells[3, i] :=
                                        FieldByName('Sido').AsString;
                                   Cells[4, i] :=
                                        FieldByName('GuGun').AsString;
                                   Cells[5, i] :=
                                        FieldByName('Dong').AsString;
                                   Cells[6, i] :=
                                        FieldByName('Ri').AsString;
                                   Cells[7, i] :=
                                        FieldByName('Bunji').AsString;

                                   dm_f.SqlWork.next;
                              end;
                              autonumbercol(0);

                         end;

                         if ShowModal = mrOk then
                         begin
                              with dm_f.SqlWork do
                              begin
                                   Close;
                                   SQL.Clear;
                                   SQL.Add('Select Seq, ZipCode, Sido, GuGun, Dong,Ri, Bunji From ma_post');
                                   Sql.Add('Where seq = :seq');
                                   ParamByName('seq').AsString :=
                                        grdpost.Cells[1,
                                        grdpost.row];
                                   open;
                                   Result :=
                                        FieldByName('ZipCode').AsString
                                        + '^'
                                        + ' ' +
                                        Trim(FieldByName('Sido').AsString)
                                        + ' ' +
                                        Trim(FieldByName('GuGun').AsString)
                                        + ' ' +
                                        Trim(FieldByName('DOng').AsString)
                                        + '^'
                                        + ' ' +
                                        Trim(FieldByName('Ri').AsString)
                                        + '^'
                                        + ' ' +
                                        Trim(FieldByName('Bunji').AsString)
                                        + DongOth;

                              end;

                         end
                         else
                         begin
                              Result := '';

                         end;
                    end;
               end;
          end;
     end;
end;





function FindZip_new(TargetJuso: string): string;
var
     SrcJuso, DongStr, DongOth, DelDoStr: string;
     SeekPosX1, SeekPosX2, SeekPosX3, DongLen: Integer;
     recCount, i: integer;

     varPostDbPath : string;
     varUpMyun, varBuBun :string;
     varJibunBuBun, varBdName, varOldDong :string;
begin
     varPostDbPath:= getConfigDir +'\postdb\newpost.mdb';

     exceptLogging(varPostDbPath);//

     if TargetJuso <> '' then
     begin
          //==== ���� ã�ƿ��� (����� üũ) =======//

             // '---��' ��Ʈ�� ����

          DelDoStr := Trim(TargetJuso);

          DongStr := '';

          SrcJuso := DelDoStr;

          SeekPosX1 := Pos(' ', copy(SrcJuso, 1, length(SrcJuso)));
          if SeekPosX1 > 0 then
          begin
               SeekPosX2 := Pos(' ', Copy(SrcJuso, SeekPosX1 + 1,
                    Length(SrcJuso)));
               if SeekPosX2 > 0 then
               begin
                    SeekPosX3 := Pos(' ', Copy(SrcJuso, SeekPosX1 +
                         SeekPosX2 +
                         1,
                         Length(SrcJuso)));
                    if SeekPosX3 > 0 then
                    begin
                         DongLen := (SeekPosX1 + SeekPosX2 + SeekPosX3
                              - 1)
                              -
                              (SeekPosX1 +
                              SeekPosX2 + 1) + 1;
                         DongOth := Copy(SrcJuso, SeekPosX1 + SeekPosX2
                              +
                              SeekPosX3,
                              Length(SrcJuso) - SeekPosX1 + SeekPosX2
                              +
                              SeekPosX3
                              + 1);
                    end
                    else
                         Donglen := Length(SrcJuso) - (SeekPosX1 +
                              SeekPosX2);
                    DongStr := copy(SrcJuso, (SeekPosX1 + SeekPosX2 +
                         1),
                         DongLen);
               end;
          end
          else
               DongStr := SrcJuso;

          try


          if dm_f.ADOConnection4.Connected = false then
               dm_f.adoConnection4.ConnectionString :=
                      'Provider=Microsoft.Jet.OLEDB.4.0;'
                    + 'Jet OLEDB:Database Password=dlrjtdldkaghekgkgkgk;'
                    + 'Data Source=' + varPostDbPath
                    + ';Mode=ReadWrite;'
                    + 'Persist Security Info=False';

               with Dm_f.ADOQuery3 do

               begin
                     Close;
                     SQL.Clear;
                     SQL.Add('Select * From postCode');
                     Sql.Add('Where ����  like :upmyun or ���θ�  like :DoroName or ��������  like :DongName   ');
                     parameters.ParamByName('upmyun').Value := DongStr + '%';
                     parameters.ParamByName('doroname').Value := DongStr + '%';
                     parameters.ParamByName('dongname').Value := DongStr + '%';

                     Open;
                     if not isEmpty then
                     begin
                          recCount := recordCount;

                          if not Assigned(findpost_new_f) then
                               findpost_new_f :=
                                    Tfindpost_new_f.Create(application);

                          with findpost_new_f do
                          begin
                               edtDongStr.Text := DongStr;
                               edtJibun.Text := '';

                               grdpost.RowCount := recCount + 1;
                               grdpost.FixedRows := 1;


                               with grdpost do
                               begin

                                    for i := FixedRows to RowCount - 1 do

                                    begin



                                       if  FieldByName('�ǹ���ȣ�ι�').AsString ='0' then
                                            varBuBun:=''
                                       else
                                            varBubun:= '-'+ FieldByName('�ǹ���ȣ�ι�').AsString ;


                                       if  trim(FieldByName('����').AsString) ='' then
                                            varUpMyun:=''
                                       else
                                            varUpMyun:= ' '+ FieldByName('����').AsString ;



                                       if  FieldByName('�����ι�').AsString ='0' then
                                            varJibunBuBun:=''
                                       else
                                            varJibunBuBun:= '-'+ FieldByName('�����ι�').AsString;

                                       if  trim(FieldByName('�ñ�����ǹ���').AsString) ='' then
                                            varBdName:=''
                                       else
                                            varBdName:= ', '+ FieldByName('�ñ�����ǹ���').AsString ;




                                   //      Cells[1, i] :=  //�����ȣ
                                   //          copy( FieldByName('�����ȣ').AsString,1,3)
                                   //          +'-'
                                   //          +copy( FieldByName('�����ȣ').AsString,4,3)
                                   //          ;
                                         Cells[1, i] :=  FieldByName('������ȣ').AsString ;

                                         if trim( FieldByName('��������').AsString
                                           + varBdName) <> ''  then
                                                 varOldDong :='(' + trim( FieldByName('��������').AsString
                                                      + varBdName) +')'
                                           else
                                                 varOldDong :='' ;

                                         Cells[2, i] :=  //���θ��ּ�
                                              FieldByName('�õ�').AsString
                                           + ' ' +   FieldByName('�ñ���').AsString
                                           + varUpMyun
                                           + ' ' +   FieldByName('���θ�').AsString
                                           + ' ' +    FieldByName('�ǹ���ȣ����').AsString
                                           +    varBuBun
                                           + varOldDong ;


                                         Cells[3, i] :=  //�����ּ�
                                              FieldByName('�õ�').AsString
                                          + ' ' +     FieldByName('�ñ���').AsString
                                          + ' ' +     FieldByName('����').AsString
                                          + ' ' +     FieldByName('��������').AsString
                                          + ' ' +    FieldByName('��').AsString
                                          + ' ' +     FieldByName('��������').AsString
                                          + varJibunBuBun   ;

                                         Cells[4, i] :=   FieldByName('�õ�').AsString ;
                                         Cells[5, i] :=   FieldByName('�ñ���').AsString ;
                                         Cells[6, i] :=   varUpMyun;
                                         Cells[7, i] :=   FieldByName('���θ�').AsString;
                                         Cells[8, i] :=   FieldByName('�ǹ���ȣ����').AsString ;
                                         Cells[9, i] :=   varBuBun  ;
                                         Cells[10, i] :=  varOldDong ;   //���θ��ּ�


                                         Dm_f.ADOQuery3.next;
                                    end;
                                    autonumbercol(0);

                               end;

                               loadPostCombo( DongStr ,'sido'   , comboBox1);
                               loadPostCombo( DongStr ,'sigungu', comboBox2);
                               loadPostCombo( DongStr ,'upmyun' , comboBox3);
                               loadPostCombo( DongStr ,'doro'   , comboBox4);




                               if ShowModal = mrOk then
                               begin
                                         Result :=  grdpost.Cells[1,  grdpost.row]  //�����ȣ
                                              + '^'
                                              +   grdpost.Cells[2,  grdpost.row] ;



                               end
                               else
                               begin
                                    Result := '';

                               end;
                          end;
                     end;
             end;
          except


                    on E: Exception do
                    begin
                         showmessage('�����ȣ �ҷ�����' +
                              #10#13 +
                              E.Message);
                         ExceptLogging('[�̹������� �������� ����.]' +#10#13 + E.Message);

                    end;
         end;
          ExceptLogging('�����ȣ �ҷ����⼺��') ;
      end;
end;



procedure LoadPostCombo(varDong:string; varKind:string; varCombobox:Tcombobox) ;
begin
          with Dm_f.ADOQuery3 do
          begin
                //�õ�, �ñ���, ����, ���θ�


                case strCase(varKind, [ 'sido' ,  'sigungu', 'upmyun' , 'doro', 'jibun']) of
                      0:
                      begin
                             Close;
                             SQL.Clear;
                             varCombobox.Items.clear;

                             SQL.Add('Select �õ� From postCode');
                             Sql.Add('Where ����  like :upmyun or ���θ�  like :DoroName or ��������  like :DongName   ');
                             SQL.Add('group by  �õ�  ');
                             SQL.Add('order by  �õ�  ');
                              parameters.ParamByName('upmyun').Value := varDong+ '%';
                              parameters.ParamByName('doroname').Value := varDong + '%';
                              parameters.ParamByName('dongname').Value := varDong + '%';
                              Open;
                              if not isEmpty then
                              begin
                                     while not eof  do
                                     begin

                                          varCombobox.Items.Add(fieldByname('�õ�').AsString);
                                          next;
                                     end;
                              end;
                             if varCombobox.Items.count > 0 then
                                   varCombobox.Itemindex := 0
                             else
                                  varCombobox.Itemindex :=-1;
                      end;
                      1:
                      begin
                             Close;
                             SQL.Clear;
                             varCombobox.Items.clear;
                             SQL.Add('Select �ñ��� From postCode');
                             Sql.Add('Where   ����  like :upmyun or ���θ�  like :DoroName or ��������  like :DongName   ');
                             SQL.Add('group by  �ñ���  ');
                             SQL.Add('order by  �ñ���  ');
                              parameters.ParamByName('upmyun').Value := varDong+ '%';
                              parameters.ParamByName('doroname').Value := varDong + '%';
                              parameters.ParamByName('dongname').Value := varDong + '%';
                              Open;
                              if not isEmpty then
                              begin
                                     while not eof  do
                                     begin

                                          varCombobox.Items.Add(fieldByname('�ñ���').AsString);
                                          next;
                                     end;
                              end;
                            if varCombobox.Items.count > 0 then
                                   varCombobox.Itemindex := 0
                             else
                                  varCombobox.Itemindex :=-1;
                      end;
                      2:
                      begin
                             Close;
                             SQL.Clear;
                             varCombobox.Items.clear;
                             SQL.Add('Select ���� From postCode');
                             Sql.Add('Where ����  like :upmyun or ���θ�  like :DoroName or ��������  like :DongName   ');
                             SQL.Add('group by  ����  ');
                             SQL.Add('order by  ����  ');
                              parameters.ParamByName('upmyun').Value := varDong+ '%';
                              parameters.ParamByName('doroname').Value := varDong + '%';
                              parameters.ParamByName('dongname').Value := varDong + '%';
                              Open;
                              if not isEmpty then
                              begin
                                     while not eof  do
                                     begin

                                          varCombobox.Items.Add(fieldByname('����').AsString);
                                          next;
                                     end;
                              end;
                            if varCombobox.Items.count > 0 then
                                   varCombobox.Itemindex := 0
                             else
                                  varCombobox.Itemindex :=-1;
                      end;
                      3:
                      begin
                             Close;
                             SQL.Clear;
                             varCombobox.Items.clear;
                             SQL.Add('Select ���θ� From postCode');
                             Sql.Add('Where ����  like :upmyun or ���θ�  like :DoroName or ��������  like :DongName   ');
                             SQL.Add('group by  ���θ�  ');
                             SQL.Add('order by  ���θ�  ');
                              parameters.ParamByName('upmyun').Value := varDong+ '%';
                              parameters.ParamByName('doroname').Value := varDong + '%';
                              parameters.ParamByName('dongname').Value := varDong + '%';
                              Open;
                              if not isEmpty then
                              begin
                                     while not eof  do
                                     begin

                                          varCombobox.Items.Add(fieldByname('���θ�').AsString);
                                          next;
                                     end;
                              end;
                            if varCombobox.Items.count > 0 then
                                   varCombobox.Itemindex := 0
                             else
                                  varCombobox.Itemindex :=-1;
                      end;


                end;


          end;
end;


function FindZip_new_Sido(varKind, DongStr,  Sido, siGunGu, upMyun, Doro, jibun: string): string;
var
     SrcJuso,   DongOth, DelDoStr: string;
     SeekPosX1, SeekPosX2, SeekPosX3, DongLen: Integer;
     recCount, i: integer;

     varPostDbPath : string;
     varUpMyun, varBuBun :string;
     varJibunBuBun, varBdName, varOldDong :string;
begin
     varPostDbPath:= getConfigDir +'\postdb\newpost.mdb';

        //like�˻����� ������ ������...�ȵȴ�.

   //  if upMyun ='' then
   //       upMyun :='123' ;

     if Doro ='' then
      Doro :='123';

           dm_f.ADOConnection4.Connected := false;
       //  if dm_f.ADOConnection4.Connected = false then
               dm_f.adoConnection4.ConnectionString :=
                      'Provider=Microsoft.Jet.OLEDB.4.0;'
                    + 'Jet OLEDB:Database Password=dlrjtdldkaghekgkgkgk;'
                    + 'Data Source=' + varPostDbPath
                    + ';Mode=ReadWrite;'
                    + 'Persist Security Info=False';

          try
               with Dm_f.ADOQuery4 do
                  {            Sql.Add('Where �õ� = :sido and  �ñ��� = :sigungu and  ����= :upmyun  and ���θ�=:doro  ');
                               parameters.ParamByName('sido').Value := sido;
                               parameters.ParamByName('sigungu').Value := sigungu;
                               parameters.ParamByName('upmyun').Value := upmyun;
                               parameters.ParamByName('doro').Value := doro;
}
               begin
                     Close;
                     SQL.Clear;
                     SQL.Add('Select * From postCode');
                     case strCase(varKind, [ 'sido' ,  'sigungu', 'upmyun' , 'doro', 'jibun','jibun2']) of
                           0:   //'sido'
                           begin
                               //like�˻����� ������ ������...�ȵȴ�.


                               Sql.Add('Where �õ� = :sido   ');
                               Sql.Add(' and  (����  like :upmyun or ���θ�  like :DoroName  or ��������  like :DongName  )  ');
                               parameters.ParamByName('sido').Value := sido;
                          //   parameters.ParamByName('sigungu').Value := sigungu;
                               parameters.ParamByName('upmyun').Value := dongStr + '%';
                               parameters.ParamByName('doroname').Value := dongStr  + '%';
                               parameters.ParamByName('dongname').Value := dongStr  + '%';

                          end;
                           1:  // 'sigungu'
                           begin
                               Sql.Add('Where (�õ� = :sido and  �ñ��� = :sigungu)   ');
                               Sql.Add('and (����  like :upmyun or ���θ�  like :DoroName  or ��������  like :DongName  ) ');
                               parameters.ParamByName('sido').Value := sido;
                               parameters.ParamByName('sigungu').Value := sigungu;

                               parameters.ParamByName('upmyun').Value := dongStr  + '%';
                               parameters.ParamByName('doroname').Value := dongStr  + '%';
                               parameters.ParamByName('dongname').Value := dongStr  + '%';


                          end;

                           2: //  'upmyun'
                           begin
                               Sql.Add('Where �õ� = :sido and  �ñ��� = :sigungu   and (����= :upmyun   ');
                               Sql.Add('or  ���θ�  like :DoroName  ) ');
                               parameters.ParamByName('sido').Value := sido;
                               parameters.ParamByName('sigungu').Value := sigungu;

                               parameters.ParamByName('upmyun').Value := upmyun;
                               parameters.ParamByName('doroname').Value :=dongStr  + '%';


                          end;

                           3: // 'doro'
                           begin
                               Sql.Add('Where �õ� = :sido and  �ñ��� = :sigungu   and ����= :upmyun   ');
                               Sql.Add('and    ���θ� = :DoroName    ');
                               parameters.ParamByName('sido').Value      := sido;
                               parameters.ParamByName('sigungu').Value   := sigungu;

                               parameters.ParamByName('upmyun').Value    := upmyun;
                               parameters.ParamByName('doroname').Value  :=doro;


                          end;
                         4: // 'jibun'
                           begin
                               Sql.Add('Where (�õ� = :sido         ');
                               Sql.Add(' and  �ñ��� = :sigungu    ');
                               Sql.Add(' and    ���θ� = :DoroName) ');
                               Sql.Add(' and  �ǹ���ȣ���� like :jibun  ');

                               parameters.ParamByName('sido').Value     := sido;
                               parameters.ParamByName('sigungu').Value  := sigungu;
                               parameters.ParamByName('doroname').Value :=doro;
                               parameters.ParamByName('jibun').Value    := jibun+'%';

                               if upmyun <> '' then
                               begin
                                    Sql.Add(' and ����= :upmyun         ');
                                    parameters.ParamByName('upmyun').Value   := upmyun;
                               end;

                          end;
                      5: // 'jibun2'
                           begin
                               Sql.Add('Where (�õ� = :sido         ');
                               Sql.Add(' and  �ñ��� = :sigungu     ');
                               Sql.Add(' and  �������� = :DoroName) ');
                               Sql.Add(' and  �������� like :jibun  ');

                               parameters.ParamByName('sido').Value     := sido;
                               parameters.ParamByName('sigungu').Value  := sigungu;
                               parameters.ParamByName('doroname').Value := doro;
                               parameters.ParamByName('jibun').Value    := jibun+'%';

                               if upmyun <> '' then
                               begin
                                    Sql.Add(' and ����= :upmyun         ');
                                    parameters.ParamByName('upmyun').Value   := upmyun;
                               end;

                          end;
                     end;


                     Open;
                     if not isEmpty then
                     begin
                          recCount := recordCount;

                          if not Assigned(findpost_new_f) then
                               findpost_new_f :=
                                    Tfindpost_new_f.Create(application);

                          with findpost_new_f do
                          begin
                               grdpost.RowCount := recCount + 1;
                               grdpost.FixedRows := 1;


                               with grdpost do
                               begin

                                    for i := FixedRows to RowCount - 1 do

                                    begin



                                       if  FieldByName('�ǹ���ȣ�ι�').AsString ='0' then
                                            varBuBun:=''
                                       else
                                            varBubun:= '-'+ FieldByName('�ǹ���ȣ�ι�').AsString ;


                                       if  trim(FieldByName('����').AsString) ='' then
                                            varUpMyun:=''
                                       else
                                            varUpMyun:= ' '+ FieldByName('����').AsString ;



                                       if  FieldByName('�����ι�').AsString ='0' then
                                            varJibunBuBun:=''
                                       else
                                            varJibunBuBun:= '-'+ FieldByName('�����ι�').AsString;

                                       if  trim(FieldByName('�ñ�����ǹ���').AsString) ='' then
                                            varBdName:=''
                                       else
                                            varBdName:= ', '+ FieldByName('�ñ�����ǹ���').AsString ;




                                     //   Cells[1, i] :=  //�����ȣ
                                     //        copy( FieldByName('�����ȣ').AsString,1,3)
                                     //        +'-'
                                     //        +copy( FieldByName('�����ȣ').AsString,4,3)
                                     //        ;
                                          Cells[1, i] :=  FieldByName('������ȣ').AsString;

                                         if trim( FieldByName('��������').AsString
                                           + varBdName) <> ''  then
                                                 varOldDong :='(' + trim( FieldByName('��������').AsString
                                                      + varBdName) +')'
                                           else
                                                 varOldDong :='' ;

                                         Cells[2, i] :=  //���θ��ּ�
                                              FieldByName('�õ�').AsString
                                           + ' ' +   FieldByName('�ñ���').AsString
                                           + varUpMyun
                                           + ' ' +   FieldByName('���θ�').AsString
                                           + ' ' +    FieldByName('�ǹ���ȣ����').AsString
                                           +    varBuBun
                                           + varOldDong ;


                                         Cells[3, i] :=  //�����ּ�
                                              FieldByName('�õ�').AsString
                                          + ' ' +     FieldByName('�ñ���').AsString
                                          + ' ' +     FieldByName('����').AsString
                                          + ' ' +     FieldByName('��������').AsString
                                          + ' ' +    FieldByName('��').AsString
                                          + ' ' +     FieldByName('��������').AsString
                                          + varJibunBuBun   ;


                                         Cells[4, i] :=   FieldByName('�õ�').AsString ;
                                         Cells[5, i] :=   FieldByName('�ñ���').AsString ;
                                         Cells[6, i] :=   varUpMyun;
                                         Cells[7, i] :=   FieldByName('���θ�').AsString;
                                         Cells[8, i] :=   FieldByName('�ǹ���ȣ����').AsString ;
                                         Cells[9, i] :=   varBuBun  ;
                                         Cells[10, i] :=  varOldDong ;   //���θ��ּ�



                                         Dm_f.ADOQuery4.next;
                                    end;
                                    autonumbercol(0);

                               end;


                               {loadPostCombo( DongStr ,'sido'   ,   comboBox1);
                               loadPostCombo( DongStr ,'sigungu',comboBox2);
                               loadPostCombo( DongStr ,'upmyun' ,  comboBox3);
                               loadPostCombo( DongStr ,'doro'   ,   comboBox4);
                                }


                          {
                               if ShowModal = mrOk then
                               begin
                                         Result :=  grdpost.Cells[1,  grdpost.row]  //�����ȣ
                                              + '^'
                                              +   grdpost.Cells[2,  grdpost.row] ;



                               end
                               else
                               begin
                                    Result := '';

                               end;
                               }
                          end;
                     end;
             end;
          except
          end;
 end;





function FindPibo(TargetPibo: string): string;
var
     VarPiboName,
          VarPiboChart,
          VarJohapgiho,
          VarJohapName,
          VarJungNo,
          VarHwanjakind,
          VarHomeTel,
          VarHomeZip,
          VarJuso: string;

begin
     if not Assigned(findGogek_f) then
          findGogek_f := TfindGogek_f.Create(application);

     with DM_f.Sqltemp do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * From ma_gogek_pibo');
          Sql.Add('Where Name=:Name');
          ParamByName('Name').AsString := TargetPibo;
          Open;
          if not IsEmpty then
          begin
               with findGogek_f, Dm_f.SqlWork do
               begin
                    GrdFind.Clear;
                    Close;
                    SQL.Clear;
                    SQL.Add('Select * From ma_gogek_pibo');
                    //ParamByName('Name').AsString := TargetPibo;
                    //ParamByName('Chart').AsString := '';
                    SQL.Add('Order by reg_day DESC'); // 2011.8
                    Open;
                    if ShowModal = mrOk then
                    begin
                         VarPiboChart := Grdfind.Cells[1,
                              grdFind.Row];
                         VarPiboName := Grdfind.Cells[2, grdFind.Row];

                         if FieldByName('h_zip').AsString <> '' then
                              VarHomeZip :=
                                   Copy(FieldByName('h_zip').AsString,
                                   1, 3) + '-' +
                                   Copy(FieldByName('h_zip').AsString, 4, 3)
                         else
                              VarHomeZip := '';

                         VarJuso := FieldByName('h_juso').AsString;
                         VarHomeTel :=
                              FieldByName('h_phone').AsString;
                         VarJohapGiho := FieldByName('Kiho').AsString;
                         VarJungNo :=
                              FieldByName('K_Number').AsString;

                         with DM_f.SqlTemp do
                         begin
                              Close;
                              SQL.Clear;
                              SQL.Add('Select C_Key, C_Name, C_Gubun From ChoHap');
                              Sql.Add('Where C_key like :C_Key');
                              ParamByName('C_Key').AsString :=
                                   VarJohapGiho;
                              Open;
                              if not IsEmpty then
                              begin
                                   VarJohapName :=
                                        FieldByName('C_name').AsString;
                                   VarHwanJaKind :=
                                        FieldByName('C_Gubun').AsString;
                              end;
                         end;

                         Result := VarPiboName
                              + '^' + VarPiboChart
                              + '^' + VarJohapgiho
                              + '^' + VarJohapName
                              + '^' + VarJungNo
                              + '^' + VarHwanjakind
                              + '^' + VarHomeTel
                              + '^' + VarHomeZip
                              + '^' + VarJuso;

                    end
                    else
                    begin
                         Result := '';
                    end;

               end;
          end;
     end;
end;

function FindJohap(TargetJohap: string): string;
var
     NewJohap: string;
begin
     //���ո�Ī ã��
     if TargetJohap <> '' then
     begin
          Newjohap := TargetJohap;
          with DM_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Select C_Key, C_Name, C_Gubun From ChoHap');
               Sql.Add('Where C_key = :C_Key');
               ParamByName('C_Key').AsString := NewJohap;
               Open;
               if not isEmpty then
                    Result := FieldByName('C_name').AsString +
                         '^' +
                         FieldByName('C_Gubun').AsString;
               exit;
          end;
     end;
end;




function LoadGogekData_jumin(jumin: string; varStatusBar: TadvProgressbar; viewAll: boolean = false):
     boolean;
const
     SelectGogek = 'select * from view_gogek';
     SelectGogek_where1 = ' where jumin = :jumin';

var
     varChart: string;
     varQuery: string;
     RecCount, roC, i: integer;
begin
     if trim(jumin) = '' then
     begin
          result := false;
          exit;
     end;
     roc := 1;
     varQuery := LoadGroupDataQuery;

     with dm_f.SqlFindHwanja do
     begin

          Close;
          SQL.Clear;
          sql.text := SelectGogek;
          sql.text := sql.Text + selectgogek_where1;
          ParamByName('jumin').AsString := jumin;

          if viewAll <> true then
          begin
//               if varQuery <> '' then
//                    sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

          end;

          SQL.Add('Order by Last_day DESC');
          Open;
          if not IsEmpty then
          begin
               LoadGogekValue;
               result := true;

          end
          else
          begin
               //  showmessage('No Data.');
               result := false;

          end;

     end;
end;





function LoadGogekData_name(Chart: string; varStatusBar: TadvProgressbar; Gubun: integer = 0; viewAll: boolean = false):
     integer;
const
     SelectGogek = 'select * from view_gogek';
     SelectGogek_where1 = ' where (name like ''%'' + :name +''%'' ) ';


     SelectGogek_where3 = ' where (jumin like ''%'' + :name +''%'' ) ' + #10#13 +
          'or  (c_phone like ''%'' + :name +''%'' ) '; //2012.2.24

     SelectGogek_where5 = ' where (jumin like ''%'' + :name +''%'' ) ';

     SelectGogek_where7 = ' where (c_phone like ''%'' + :name +''%'' ) ';

     SelectGogek_where8 = ' where (pname1 like ''%'' + :name +''%'' ) ' + #10#13 +
          'or  (pname2 like''%'' + :name +''%'' ) '; //2012.2.24

     SelectGogek_where9 = ' where (h_Juso like ''%'' + :name +''%'' ) '  ;

     SelectGogek_where2 = ' where chart= :chart';

var
     varChart: string;

     RecCount, roC, i: integer;
     stime: integer;
     varQuery: string;
begin
     //result 1: ok
     //result 2: close
     //result 3: New
     roc := 1;


     varQuery := LoadGroupDataQuery;

     stime := gettickcount;
     if not assigned(findGogek_f) then
     begin
          findGogek_f := TfindGogek_f.Create(application);
     end;
     with dm_f.sqlFindHwanja do
     begin

          Close;
          SQL.Clear;
          sql.text := SelectGogek;
          case gubun of
               0, 7: sql.text := sql.Text + selectgogek_where1; // ����
               1: sql.text := sql.Text + selectgogek_where3; //�ֹι�ȣ �Ǵ� ��ȭ��ȣ
               2: sql.text := sql.Text + selectgogek_where5; //�ֹ�
               3: sql.text := sql.Text + selectgogek_where7; //�ڵ���
               4: sql.text := sql.Text + selectgogek_where8; //��ȣ��
               5: sql.text := sql.Text + selectgogek_where9; //�ּ�
          end;
          ParamByName('Name').AsString := Chart;



          if viewAll <> true then
          begin
//               if varQuery <> '' then
//                    sql.Add(' and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

          end;

          SQL.Add('Order by Last_day DESC');
          Open;


          if not IsEmpty then
          begin
               recCount := recordCount;
               application.ProcessMessages;

               varStatusbar.Position := 0;
               varStatusbar.ShowPercentage := true;
               varStatusbar.Max := RecCount;
               varStatusbar.Min := 0;



               with findGogek_f do
               begin
                    lbltime.Caption := '�˻��ҿ�ð�:' +     inttostr(gettickCount -    stime) + 'ms';
                    grdFind.RowCount := recCount + 1;
                    grdFind.FixedRows := 1;
                    while not dm_f.sqlFindHwanja.Eof do
                    begin
                         with grdFind, dm_f.sqlFindHwanja do
                         begin

                              for i := FixedRows to RowCount - 1 do

                              begin
                                   //  AddRow;
                                     {
            ��Ʈ
            ����
            ����
            ����

            ����
            �ּ�
            ����ȭ
            �޴���
            �Ǻ�����
            ����������}          try

                                       Cells[1, i] :=  FieldByName('chart').AsString;
                                       Cells[2, i] :=  FieldByName('name').AsString;
                                       Cells[3, i] :=  jumintogender(FieldByName('jumin').AsString);
                                       Cells[4, i] :=   copy(FieldByName('Jumin').AsString, 1, 6) + '-' + copy(FieldByName('Jumin').AsString, 7, 7);
                                       // +'*******';// copy(FieldByName('Jumin').AsString, 7, 7);
                                            //   + juminToBirth2(FieldByName('Jumin').AsString);
                                       Cells[5, i] :=   juminTonai(FieldByName('Jumin').AsString);
                                       Cells[6, i] :=   FieldByName('h_Juso').AsString;
                                       Cells[7, i] :=  FieldByName('h_phone').AsString;
                                       Cells[8, i] :=   FieldByName('c_phone').AsString;
                                       Cells[9, i] :=  FieldByName('piboname').AsString;
                                       Cells[10, i] :=   FieldByName('last_day').AsString;
                                       Cells[11, i] :=  FieldByName('pname1').AsString;
                                       Cells[12, i] :=   FieldByName('pname2').AsString;

                                       dm_f.sqlFindHwanja.next;
                                       // application.ProcessMessages;
                                       varStatusbar.position := i;
                                  except

                                      on E: Exception do
                                      begin
                                           ExceptLogging('Load gogek data.==>' +  E.Message);

                                             //   result:=false;

                                      end;
                                  end;
                              end;
                              // autosizecolumns(false, 10);
                              autonumbercol(0);

                         end;
                    end;

                    lblCount.Caption := inttostr(grdFind.RowCount - 1) +
                         '���� �˻��Ǿ����ϴ�.';
                    //grdFind.Row := 3;
                    lblshowtime.Caption := 'ȭ��ǥ�ýð�:' +
                         inttostr(gettickCount -
                         stime) + 'ms';


                    result := showmodal;


                    case result of
                         1: //mrOk
                              begin
                                   varStatusbar.position :=
                                        0;
                                   varStatusbar.ShowPercentage
                                        :=
                                        False;

                                   VarChart := Grdfind.Cells[1,
                                        grdFind.Row];
                                   with dm_f.sqlFindHwanja do
                                   begin

                                        Close;
                                        SQL.Clear;
                                        SQL.text := selectGogek;
                                        sql.text := sql.Text +
                                             selectGogek_where2;
                                        ParamByName('Chart').AsString :=
                                             varChart;
                                        Open;
                                        LoadGogekValue;
                                   end;
                              end;
                         2: //mrCancel
                              begin
                                   varStatusbar.position :=
                                        0;
                                   varStatusbar.ShowPercentage
                                        :=
                                        False;
                              end;
                         6: //mrYes  ���ε��
                              begin
                                   varStatusbar.position :=
                                        0;
                                   varStatusbar.ShowPercentage
                                        :=
                                        False;
                              end;
                    end;

               end;
          end
          else
          begin
               if Gubun <> 0 then
               begin
                    ShowMessage('�ش��ϴ� ȯ�ڰ� �����ϴ�.');
                    result := 2;
                    exit;
               end;

               if
                    Application.MessageBox(PChar('���ο� ȯ�ڸ� ����Ͻðڽ��ϱ�?'),
                    'ȯ�ڵ��', MB_YESNO) = IDYES then
               begin
                    result := 6;
               end
               else
               begin
                    result := 2;
               end;
          end;
     end;
end;

function LoadSogeNeyuk(varSogeID: string; varChart:string): string;
const
     selectdata = 'select b.remark from ma_gogek_referer a join ma_gogek_refer  b  on b.referer_id=a.id' + #10#13 +
          'where a.id = :id';
     selectdata2 = 'select refer_neyuk from ma_gogek_basic' + #10#13 +
          'where chart = :chart';

var
     RNeyuk1, Rneyuk2 : string;
begin
     result := '';

     if (varSogeID <> '0')    then
     begin
          with dm_f.sqlWork do
          begin
               close;
               sql.clear;
               sql.text := selectData;
               paramByName('id').asString := varSogeid;
               open;
                RNeyuk1 := fieldByName('remark').asString;

          end;

     end
     else
     begin
          with dm_f.sqlWork do
          begin
               close;
               sql.clear;
               sql.text := selectData2;
               paramByName('chart').asString := varChart;
               open;
               Rneyuk2 := fieldByName('refer_neyuk').asString;

          end;



     end;

        if ( RNeyuk1 <> '') and  (RNeyuk2 <> '') then
             result := RNeyuk1 + '/' +RNeyuk2
        else
                if ( trim(RNeyuk1) = '') and  ( trim(RNeyuk2) <> '') then

             result := RNeyuk2
        else
                if ( trim(RNeyuk2) = '') and  ( trim(RNeyuk1) <> '') then

             result := RNeyuk1;




   {  with dm_f.sqlWork do
     begin
          close;
          sql.clear;
          sql.text := selectData;
          paramByName('id').asString := varSogeid;
          open;
          result := fieldByName('remark').asString;

          close;
          sql.clear;
          sql.text := selectData2;
          paramByName('chart').asString := varChart;
          open;
          if result = '' then
               result := fieldByName('refer_neyuk').asString
          else
               result := result + '/' + fieldByName('refer_neyuk').asString;

     end;
     }
end;


procedure FastFileCopyCallBack(Position, Size: Longint; filename: string);
begin
     if not assigned(wait2_f) then
          wait2_f := Twait2_f.create(application);
     wait2_f.show;
     wait2_f.pgloading.Max := Size;
     wait2_f.pgloading.Position := Position;
end;

function LoadReferHosp(HospName: string; varStatusBar: TadvProgressbar):
     integer;
const
     SelectSogeja        = 'select * from ma_referhosp';
     SelectSogeja_where1 = ' where HospName like :HospName+''%''';
     SelectSogeja_where2 = ' where refercode = :refercode';

var
     varChart: string;
     referer_id: integer;
     referChk, chk1: string;
     RecCount, roC, i: integer;
     stime: integer;
begin
     //result 1: ok
     //result 2: close
     //result 3: New
     roc := 1;
     stime := GetTickCount;
     referChk := '0';
     chk1 := '0';

     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          sql.text := SelectSogeja;
          sql.text := sql.Text + selectSogeja_where1;
          ParamByName('HospName').AsString := HospName;
          //SQL.Add('Order by name' + ',' + 'jumin');
          SQL.Add('Order by hospname ');
          Open;
          if not IsEmpty then //�켱 �������� ã�´�(view_gogek)
          begin
               recCount := recordCount;
               application.ProcessMessages;

               varStatusbar.Position := 0;
               varStatusbar.ShowPercentage := true;
               varStatusbar.Max := RecCount;
               varStatusbar.Min := 0;

               referChk := '1';

               if not assigned(ReferHospChoice_f) then
               begin
                    ReferHospChoice_f := TReferHospChoice_f.Create(application);
               end;

               with ReferHospChoice_f do
               begin
                    lbltime.Caption := '�˻��ҿ�ð�:' +
                         inttostr(gettickCount -
                         stime) + 'ms';
                    grdFind.RowCount := recCount + 1;
                    grdFind.FixedRows := 1;
                    while not dm_f.SqlWork.Eof do
                    begin
                         with grdFind do
                         begin

                              for i := FixedRows to RowCount - 1 do

                              begin
                                   //  AddRow;
                                     {
                                      ��Ϲ�ȣ
                                      ������
                                      �������
                                      }

                                   Cells[1, i] :=
                                        FieldByName('refercode').AsString;
                                   Cells[2, i] :=
                                        FieldByName('hospName').AsString;
                                   Cells[3, i] :=
                                        FieldByName('rhosp').AsString;
                                   Cells[4, i] :=
                                        FieldByName('rhospID').AsString;

                                   Cells[5, i] :=
                                        FieldByName('remark').AsString;

                                   Cells[6, i] :=
                                        FieldByName('isContract').AsString;

                                   dm_f.SqlWork.next;
                                   // application.ProcessMessages;
                                   varStatusbar.position := i;
                              end; //for
                              // autosizecolumns(false, 10);
                              autonumbercol(0);

                         end; //with

                    end; //while
                    //grdFind.SortByColumn(6);


                    lblCount.Caption := inttostr(grdFind.RowCount - 1) +
                         '���� �˻��Ǿ����ϴ�.';
                    //grdFind.Row := 3;
                    lblshowtime.Caption := 'ȭ��ǥ�ýð�:' +
                         inttostr(gettickCount -
                         stime) + 'ms';
                    result := ShowModal;
                    case result of
                         1: //mrOk
                              begin
                                   varStatusbar.position := 0;
                                   varStatusbar.ShowPercentage := False;
                                   ma_ReferHospName := Grdfind.Cells[2, grdFind.Row];
                                   ma_ReferHospCOde := Grdfind.Cells[1, grdFind.Row];
                                   ma_RHosp         := Grdfind.Cells[3, grdFind.Row];
                                   ma_RHospID       := Grdfind.Cells[4, grdFind.Row];

//                                   VarChart := Grdfind.Cells[1, grdFind.Row];
//                                   //�߿� chart : key��  unique �Ӽ�
//                                   SogejaName := GrdFind.Cells[2, grdFind.Row];
//                                   //�񳻿� �Ұ��� �̸�
//                                   referer_id :=  StrToInt(Grdfind.Cells[9,   grdfind.Row]);
//                                   //�Ұ���  ID

//                                   ma_SogeIdn := referer_id; //0;
//                                   ma_SogeName := sogejaname;
//                                   ma_SogePhone := GrdFind.Cells[8, grdFind.Row]; //c_phone
//                                   ma_SogeChart := VarChart;
                              end;
                         2: //mrCancel
                              begin
                                   varStatusbar.position := 0;
                                   varStatusbar.ShowPercentage :=
                                        False;
                              end;
                         6: //mrYes  ���ε��
                              begin
                                   varStatusbar.position := 0;
                                   varStatusbar.ShowPercentage :=
                                        False;
                                   referChk := '0';
                              end;
                    end; //case

               end; //with

          end;

     end;

          if referChk = '0' then
          begin
               if
                    Application.MessageBox(PChar('���ο� �Ұ������� ����Ͻðڽ��ϱ�?'),
                    '�Ұ��������', MB_YESNO) = IDYES then
               begin
                    result := 6;
               end
               else
               begin
                    result := 2;
               end;
          end;

    // end; //with
end;



end.



