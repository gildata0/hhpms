unit sugaUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, tmsAdvGridExcel, Grids, AdvObj, BaseGrid, AdvGrid, ComCtrls,
  AdvProgr, StdCtrls, ExtCtrls, AdvProgressBar, AdvUtil;

type
  TsugaUpdate_f = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    AdvProgress1: TAdvProgressBar;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label1: TLabel;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
       procedure  LoadExcelFile(varFilename:string);
  public
    { Public declarations }
  end;

var
  sugaUpdate_f: TsugaUpdate_f;

implementation
uses udm, uSugaUpdate, uGogekData;
{$R *.dfm}

procedure TsugaUpdate_f.LoadExcelFile(varFilename:string);
begin
          advgridexcelio1.XLSImport(varfilename);
end;
procedure TsugaUpdate_f.Button1Click(Sender: TObject);
begin
     if opendialog1.execute then
     begin
          advgridexcelio1.XLSImport(opendialog1.filename);
     end;

     advProgress1.Position:=0;


end;

procedure TsugaUpdate_f.Button2Click(Sender: TObject);
begin
   Button2.enabled:=false;

                   if CheckDBUpdate('S', 'suga_20191101_01') = false then
                   begin
                       advgridexcelio1.XLSImport(extractfilepath(paramstr(0))+'upSuga\'+'suga_20191101_01.xls');
                       if sugaTableUpdate_suga_excel(advStringGrid1, advProgress1)= true then
                                  ChangeWrite(
                                  formatdatetime('YYYY-MM-DD', now),
                                  'S', //임의추가 U, 정규수가업데이트 S
                                  'suga_20191101_01');

                   end;
                   showmessage('updated');

   Button2.enabled:=true;
end;

procedure TsugaUpdate_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       action:=caFree;

end;

procedure TsugaUpdate_f.FormDestroy(Sender: TObject);
begin
      sugaUpdate_f:=nil;
end;

procedure TsugaUpdate_f.FormShow(Sender: TObject);
begin
       caption:='수가업데이트';
end;

procedure TsugaUpdate_f.Button3Click(Sender: TObject);
begin
//     if CheckDBUpdate('S', '수가2014') = false then
//     begin
       //  advgridexcelio1.XLSImport(extractfilepath(paramstr(0))+'upSuga\'+'suga_20140101_2.xls');
         if sugaTableUpdate_suga_excel(advStringGrid1, advProgress1)= true then
                       ChangeWrite(
                    formatdatetime('YYYY-MM-DD', now),
                    'S', //임의추가 U, 정규수가업데이트 S
                    '수가20191101');

//     end;

end;

procedure TsugaUpdate_f.Button4Click(Sender: TObject);
begin
//         advgridexcelio1.XLSImport(extractfilepath(paramstr(0))+'upSuga\'+'suga_2017implant.xls');
//         if sugaTableUpdate_suga_excel(advStringGrid1, advProgress1)= true then
//         begin
//           ChangeWrite(
//                    formatdatetime('YYYY-MM-DD', now),
//                    'S', //임의추가 U, 정규수가업데이트 S
//                    'suga_2017implant');
//         end;

         if sugaTableUpdate_Jeryo_MDB( advProgress1, label1)= true then
                       ChangeWrite(
                    formatdatetime('YYYY-MM-DD', now),
                    'S', //임의추가 U, 정규수가업데이트 S
                    '재료_20190401_ALL');

end;

procedure TsugaUpdate_f.Button5Click(Sender: TObject);
begin
//         advgridexcelio1.XLSImport(extractfilepath(paramstr(0))+'upSuga\'+'suga_all.xlsx');
         if sugaTableUpdate_suga_mdb( advProgress1, label1)= true then
                       ChangeWrite(
                    formatdatetime('YYYY-MM-DD', now),
                    'S', //임의추가 U, 정규수가업데이트 S
                    '수가_20190401_ALL');

end;

procedure TsugaUpdate_f.Button6Click(Sender: TObject);
begin
         if sugaTableUpdate_usersuga_mdb( advProgress1)= true then
                       ChangeWrite(
                    formatdatetime('YYYY-MM-DD', now),
                    'S', //임의추가 U, 정규수가업데이트 S
                    'user_all');

end;

procedure TsugaUpdate_f.Button7Click(Sender: TObject);
begin
         if sugaTableUpdate_usersuga2_mdb( advProgress1)= true then
                       ChangeWrite(
                    formatdatetime('YYYY-MM-DD', now),
                    'S', //임의추가 U, 정규수가업데이트 S
                    'usersuga2_all');

end;

procedure TsugaUpdate_f.Button8Click(Sender: TObject);
begin
         if sugaTableUpdate_usersuga3_mdb( advProgress1)= true then
                       ChangeWrite(
                    formatdatetime('YYYY-MM-DD', now),
                    'S', //임의추가 U, 정규수가업데이트 S
                    'usersuga3_all');

end;

procedure TsugaUpdate_f.Button9Click(Sender: TObject);
begin
         if sugaTableUpdate_Update_sanJungMyung(advStringGrid1, advProgress1)= true then
                       ChangeWrite(
                    formatdatetime('YYYY-MM-DD', now),
                    'U', //임의추가 U, 정규수가업데이트 S
                    '산정명칭');

end;

end.
