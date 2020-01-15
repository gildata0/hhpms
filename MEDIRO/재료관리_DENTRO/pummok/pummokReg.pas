unit pummokReg;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls,  ExtCtrls, Buttons, ComCtrls,
      ExtDlgs,  AdvGlowButton, AdvPanel,
     Grids, BaseGrid, AdvGrid, JPEG, DB, AdvEdit;

type
     TpummokReg_f = class(TForm)
          pnlbtn: TAdvPanel;
          opd: TOpenPictureDialog;
          btnCancel: TAdvGlowButton;
          btnSave: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          pnlPummok: TAdvPanel;
          Label14: TLabel;
          Label15: TLabel;
          Label16: TLabel;
          Label19: TLabel;
          Label20: TLabel;
          Label21: TLabel;
          Label22: TLabel;
          Label23: TLabel;
          Label24: TLabel;
          Label25: TLabel;
          Label26: TLabel;
          Label27: TLabel;
          Label28: TLabel;
          Label29: TLabel;
          Label30: TLabel;
          Label31: TLabel;
          Label32: TLabel;
          Label33: TLabel;
          edtCode: TEdit;
          edtName: TEdit;
          edtModel: TEdit;
          edtJejo: TEdit;
          edtDanwi: TEdit;
          edtLge: TEdit;
          edtMid: TEdit;
          edtSmall: TEdit;
          edtLoc: TEdit;
          edtBohumCode: TEdit;
          edtBunCode: TEdit;
          pnlImg: TAdvPanel;
          pic: TImage;
          BitBtn1: TAdvGlowButton;
          BitBtn2: TAdvGlowButton;
          edtPic: TEdit;
          edtDate: TDateTimePicker;
          cbLarge: TComboBox;
          cbJejo: TComboBox;
          cbLocate: TComboBox;
          cbMiddle: TComboBox;
          cbSmall: TComboBox;
          dtUseday: TDateTimePicker;
          edtSpec: TEdit;
          Label1: TLabel;
          Label2: TLabel;
          dtMod: TDateTimePicker;
    lblCode: TLabel;
    Button1: TButton;
    edtSmallJego: TAdvEdit;
    edtLgeJego: TAdvEdit;
    edtJego: TAdvEdit;
    edtPanmega: TAdvEdit;
    edtbenefit: TAdvEdit;
    lblID: TLabel;

          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure edtCodeKeyPress(Sender: TObject; var Key: Char);
          procedure cbSmallChange(Sender: TObject);
          procedure cbLocateChange(Sender: TObject);
          procedure cbJejoChange(Sender: TObject);
          procedure cbLargeChange(Sender: TObject);
          procedure cbMiddleChange(Sender: TObject);
          procedure cbLargeExit(Sender: TObject);
          procedure cbMiddleExit(Sender: TObject);
          procedure cbSmallExit(Sender: TObject);
          procedure cbJejoExit(Sender: TObject);
          procedure cbLocateExit(Sender: TObject);
          procedure BitBtn2Click(Sender: TObject);
          procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
     private
          { Private declarations }
          procedure ComboLoad;
          function isEmptyCheckCode:boolean;
          procedure SaveImage(varId: string; varImage: string);
          function makeBunCode(varlarge, varMiddle, varSmall: string): string;
     public
          { Public declarations }
          modFlag, InsFlag: boolean;
          selectedCode: string;

          procedure LoadImage(varID: string);
          procedure FieldClear;
          procedure fieldset(Code: string);
     end;

var
     pummokReg_f: TpummokReg_f;

implementation

uses main, dm, uJegoSet, DynamicPrint, pummokList;
const

     Select_All = 'Select * from tblPummok';
     Select_Pummok = 'Select * from tblPummok' + #13#10 +
//          'Where PmBarcode=:PmBarcode';
            'Where ID=:ID';
     Insert_Pummok = 'Insert Into tblPummok' + #13#10 +
          '(PmuCode,PmBarCode,PmName,Pmmodel,PmDanwi,PmSpec,' + #13#10 +
          'Pmpic,PmBuncode,PmJejoCode,PmLocate,PmJegoMin,' + #13#10 +
          'PmJegoMax,PmJego,PmPrice,PmRate,PmRegDay, PmUseDay, PmModDay) values' + #13#10 +
          '(:PmuCode,:PmBarCode,:PmName,:Pmmodel, :PmDanwi, :PmSpec,  ' + #13#10 +
          ':Pmpic,:PmBuncode,:PmJejoCode,:PmLocate,:PmJegoMin,' + #13#10 +
          ':PmJegoMax,:PmJego,:PmPrice,:PmRate,:PmRegDay,:PmuseDay, :PmModDay)';
     Update_Pummok = 'Update tblPummok Set' + #13#10 +
          'PmBarCode=:PmBarCode , PmuCode=:PmuCode,PmName=:PmName,Pmmodel=:Pmmodel,PmDanwi=:PmDanwi,PmSpec=:PmSpec, ' + #13#10 +
          'Pmpic=:Pmpic,PmBuncode=:PmBuncode,PmJejoCode=:PmJejoCode,PmLocate=:PmLocate,PmJegoMin=:PmJegoMin,' + #13#10 +
          'PmJegoMax=:PmJegoMax,PmJego=:PmJego,PmPrice=:PmPrice,PmRate=:PmRate,PmRegDay=:PmRegDay, PmUseDay=:PmUseDay, PmModDay=:PmModDay' + #13#10 +
          'where ID=:ID';
//          'where PmBarCode=:PmBarCode';

     Delete_Pummok = 'Delete from tblPummok' + #13#10 +
          'where ID=:ID';
      //    'where PmBarCode=:PmBarCode';

     {$R *.dfm}

procedure TpummokReg_f.FieldClear;
begin


     lblID.Caption:='';
     lblCode.Caption:='';

     edtCode.text := '';
     edtName.text := '';
     edtModel.text := '';
     edtJejo.text := '';
     edtDanwi.text := '';
     edtSpec.text := '';
     edtLge.text := '';
     edtMid.text := '';
     edtSmall.text := '';
     edtJego.Value := 0;
     edtSmallJego.Value := 0;
     edtLgeJego.Value := 0;
     edtLoc.text := '';
     edtDate.Date := now;
     edtPanmega.Value := 0;
     edtbenefit.Value := 0;
     edtBohumCode.text := '';
     edtPic.Text := '';
     edtBunCode.Text := '';

     cbSmall.itemindex := -1;
     cbMiddle.itemindex := -1;
     cbLarge.itemindex := -1;
     cbJejo.itemindex := -1;
     cbLocate.itemindex := -1;

     dtUseday.Date := now;
     dtMod.Date := now;

     pic.Picture := nil;

end;

procedure TpummokReg_f.fieldset(Code: string);
const
     Select_BunSmall = 'Select * from tblBunSmall' + #13#10 +
          'where BsCode=:BsCode';
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'where BmCode=:BmCode';
     Select_BunLarge = 'Select * from tblBunLarge' + #13#10 +
          'where Blcode =:BlCode';
     Select_Upche = 'Select * from tblUpche' + #13#10 +
          'where UcCode=:UcCode';
     Select_Locate = 'Select * from tblLocate' + #13#10 +
          'where LcCode=:LcCode';
begin
     with Dm_f.SqlSel, pummokReg_f do
     begin
          SQL.Text := SELECT_Pummok;
          ParamByName('ID').AsString := Code;

//          ParamByName('PmBarCode').AsString := Code;
          open;
          if not IsEmpty then
          begin
               lblID.Caption  := FieldByName('ID').AsString;

               edtBohumCode.text := FieldByName('PmuCode').AsString;
               lblCode.Caption  := FieldByName('PmBarCode').AsString;
               edtCode.text := FieldByName('PmBarCode').AsString;
               edtName.text := FieldByName('PmName').AsString;
               edtModel.text := FieldByName('Pmmodel').AsString;
               edtDanwi.text := FieldByName('PmDanwi').AsString;
               edtSpec.text := FieldByName('PmSpec').AsString;
               edtPic.Text := FieldByName('Pmpic').AsString;
               edtBunCode.Text := FieldByName('PmBuncode').AsString;

               cbLarge.ItemIndex := cbLarge.Items.IndexOf(copy(FieldByName('PmBuncode').AsString, 1, 3));
               cbMiddle.ItemIndex := cbMiddle.Items.IndexOf(copy(FieldByName('PmBuncode').AsString, 4, 3));
               cbSmall.ItemIndex := cbSmall.Items.IndexOf(copy(FieldByName('PmBuncode').AsString, 7, 3));

               cbJejo.ItemIndex := cbJejo.Items.IndexOf(FieldByName('PmJejoCode').AsString);
               with dm_f.sqlwork do
               begin
                    SQL.Text := Select_Upche;
                    paramByName('UcCode').AsString := Cbjejo.text;
                    Open;
                    edtJejo.text := FieldByname('UcSangho').AsString;
               end;

               cbLocate.ItemIndex := cbLocate.Items.IndexOf(FieldByName('PmLocate').AsString);
               with dm_f.sqlwork do
               begin
                    SQL.Text := Select_Locate;
                    paramByName('LcCode').AsString := CbLocate.text;
                    Open;
                    edtLoc.text := FieldByname('LcName').AsString;
               end;

               with dm_f.sqlwork do
               begin
                    SQL.Text := Select_BunLarge;
                    paramByName('BlCode').AsString := CbLarge.text;
                    Open;
                    edtlge.text := FieldByname('BlName').AsString;
               end;
               with dm_f.sqlwork do
               begin
                    SQL.Text := Select_BunMiddle;
                    paramByName('BmCode').AsString := CbMiddle.text;
                    Open;
                    edtmid.text := FieldByname('BmName').AsString;
               end;
               with dm_f.sqlwork do
               begin
                    SQL.Text := Select_BunSmall;
                    paramByName('BsCode').AsString := CbSmall.text;
                    Open;
                    edtSmall.text := FieldByname('BsName').AsString;
               end;

               edtSmallJego.value := FieldByName('PmJegoMin').AsFloat;
               edtLgeJego.value := FieldByName('PmJegoMax').AsFloat;
               edtJego.value := FieldByName('PmJego').AsFloat;
               edtPanmega.value := FieldByName('PmPrice').AsFloat;
               edtbenefit.value := FieldByName('PmRate').AsFloat;
               edtDate.Date := strToDate(FieldByName('PmRegDay').AsString);
               if FieldByName('PmUseDay').AsString <> '' then
                    dtUseDay.Date := strToDate(FieldByName('PmUseDay').AsString)
               else
                    dtUseDay.Date := now;
               if FieldByName('PmModDay').AsString <> '' then
                    dtMod.Date := strToDate(FieldByName('PmModDay').AsString)
               else
                    dtMod.Date := now;

          end;
          LoadImage(Code);

     end;
end;

procedure TpummokReg_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TpummokReg_f.FormDestroy(Sender: TObject);
begin
     pummokReg_f := nil;
end;

procedure TpummokReg_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '픔목 등록';
     //  iHeight := main_f.ClientHeight;
     //  iWidth := main_f.ClientWidth;
     //  iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 61;
     //  iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 2;
     //  SetBounds(0, 0, iWidth, iHeight);
     fieldclear;
     ComboLoad;

end;

procedure TpummokReg_f.btnClsClick(Sender: TObject);
begin
     Close;
end;

procedure TpummokReg_f.btnSaveClick(Sender: TObject);
begin

//     if lblCode.caption <> edtcode.Text then
//     begin
////           if  isEmptycheckCode = false then
////           begin
////                showmessage('이미 등록된 코드입니다');
////               exit;
////           end;
//
//            showmessage(' 코드를 수정하신후 진행하십시오.');
//
//            exit;
//     end;


     with Dm_f.SqlWork do
     begin
          SQL.Text := SELECT_Pummok;
          ParamByName('ID').AsString := lblID.caption;
      //    ParamByName('PmBarCode').AsString := edtcode.text;
          open;
          if isEmpty then
          begin
               InsFlag := true;
               modFlag := false;
          end
          else
          begin
               InsFlag := false;
               modFlag := true;
          end;
     end;

     with dm_f.sqlwork do
     begin
          if InsFlag = true then
          begin
               SQL.Text := Insert_Pummok;
          end

          else
               if ModFlag = true then
               begin
                    SQL.Text := Update_Pummok;
                    ParamByName('ID').AsString := lblID.caption;
               end;
          ParamByName('PmuCode').AsString := edtBohumCode.text;
          ParamByName('PmBarCode').AsString := edtCode.text;
          ParamByName('PmName').AsString := edtName.text;
          ParamByName('Pmmodel').AsString := edtModel.text;
          ParamByName('PmDanwi').AsString := edtDanwi.text;
          ParamByName('PmSpec').AsString := edtSpec.text;
          ParamByName('Pmpic').AsString := edtPic.Text;
          ParamByName('PmBuncode').AsString := edtBunCode.Text;
          ParamByName('PmJejoCode').AsString := cbJejo.text;
          ParamByName('PmLocate').AsString := cbLocate.text;
          ParamByName('PmJegoMin').AsFloat := edtSmallJego.Value;
          ParamByName('PmJegoMax').AsFloat := edtLgeJego.Value;
          ParamByName('PmJego').AsFloat := edtJego.Value;
          ParamByName('PmPrice').AsFloat := edtPanmega.Value;
          ParamByName('PmRate').AsFloat := edtbenefit.Value;
          ParamByName('PmRegDay').AsString := formatDatetime('YYYY-MM-DD', edtDate.date);
          ParamByName('PmUseDay').AsString := formatDatetime('YYYY-MM-DD', dtUseDay.date);
          ParamByName('PmModDay').AsString := formatDatetime('YYYY-MM-DD', now);
          execSql;
          showmessage('성공적으로 저장되었습니다');

          pummokList_f.SelectData;


     end;

     close;
end;

procedure TpummokReg_f.btnCancelClick(Sender: TObject);
begin
     FieldClear;
end;

procedure TpummokReg_f.edtCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          if  isEmptycheckCode = true then
          begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
          end
          else
          begin
               showmessage('이미 등록된 코드입니다');
               exit;
          end;
     end;
end;

function TpummokReg_f.makeBunCode(varlarge, varMiddle, varSmall: string): string;
begin
     if varlarge = '' then
          varlarge := '000';
     if varMiddle = '' then
          varlarge := '000';
     if varSmall = '' then
          varlarge := '000';

     result := varLarge + varMiddle + varSmall;

end;

procedure TpummokReg_f.cbSmallChange(Sender: TObject);
const
     Select_BunSmall = 'Select * from tblBunSmall' + #13#10 +
          'Where Bscode=:Bscode';
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'Where Bmcode=:Bmcode';
     Select_BunLarge = 'Select * from tblBunLarge' + #13#10 +
          'Where Blcode=:Blcode';

begin

     edtBuncode.text := makeBunCode(cbSmall.text, cbMiddle.text, cblarge.text);

     with dm_f.sqlwork do
     begin
          SQL.Text := Select_BunSmall;
          ParamByName('BsCode').AsString := cbSmall.text;
          Open;
          edtSmall.text := fieldbyName('BsName').AsString;
     end;
end;

procedure TpummokReg_f.ComboLoad;
const
     Select_BunSmall = 'Select * from tblBunSmall' + #13#10 +
          'order by Bscode Asc';
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'order by Bmcode Asc';
     Select_BunLarge = 'Select * from tblBunLarge' + #13#10 +
          'order by Blcode Asc';
     Select_Upche = 'Select * from tblUpche' + #13#10 +
          //          'where UcType=:UcType' + #13#10 +
     'order by UcCode Asc';
     Select_Locate = 'Select * from tblLocate' + #13#10 +
          'order by LcCode Asc';

     Select_Gyejung = 'Select * from tblGyejung' + #13#10 +
          'order by GjCode Asc';
     Select_Busu = 'Select * from tblBusu' + #13#10 +
          'order by BusuCode Asc';
     Select_SangGakFinish = 'Select * from tblSangGakFinish' + #13#10 +
          'order by SfCode Asc';
     Select_SangGakMethod = 'Select * from tblSangGakMethod' + #13#10 +
          'order by SmCode Asc';
     Select_Chubun = 'Select * from tblChubun' + #13#10 +
          'order by CbCode Asc';

begin
     cbSmall.items.clear;
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_BunSmall;
          Open;

          while not eof do
          begin
               cbSmall.items.add(FieldByName('BsCode').AsString);
               next;
          end;
     end;

     cbMiddle.items.clear;
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_BunMiddle;
          Open;

          while not eof do
          begin
               cbMiddle.items.add(FieldByName('BmCode').AsString);
               next;
          end;
     end;

     cbLarge.items.clear;
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Bunlarge;
          Open;

          while not eof do
          begin
               //               cbLarge.items.add(FieldByName('BlCode').AsString + FieldByName('BlName').AsString);
               cbLarge.items.add(FieldByName('BlCode').AsString);
               next;
          end;
     end;

     cbJejo.items.clear;
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Upche;
          Open;

          while not eof do
          begin
               cbJejo.items.add(FieldByName('UcCode').AsString);
               next;
          end;
     end;

     cbLocate.items.clear;
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Locate;
          Open;

          while not eof do
          begin
               cbLocate.items.add(FieldByName('LcCode').AsString);
               next;
          end;
     end;

end;

procedure TpummokReg_f.cbLocateChange(Sender: TObject);
const
     Select_Locate = 'Select * from tblLocate' + #13#10 +
          'Where Lccode=:Lccode';

begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Locate;
          ParamByName('LcCode').AsString := cbLocate.text;
          Open;
          edtLoc.text := fieldbyName('LcName').AsString;
     end;
end;

procedure TpummokReg_f.cbJejoChange(Sender: TObject);
const
     Select_Upche = 'Select * from tblUpche' + #13#10 +
          'Where UcCode=:UcCode';
begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_UpChe;
          ParamByName('UcCode').AsString := cbJejo.text;
          Open;
          if not isEmpty then
               edtJejo.text := fieldbyName('UcSangho').AsString
          else
               edtJejo.text := '';
     end;
end;

procedure TpummokReg_f.cbLargeChange(Sender: TObject);
const
     Select_BunSmall = 'Select * from tblBunSmall' + #13#10 +
          'where BlCode=:BlCode and BmCode=:BmCode';
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'where BlCode=:BlCode';
     Select_BunLarge = 'Select * from tblBunLarge' + #13#10 +
          'where  Blcode =:BlCode';

begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_BunLarge;
          paramByName('BlCode').AsString := CbLarge.text;
          Open;
          edtlge.text := FieldByname('BlName').AsString;
     end;

//     cbMiddle.items.clear;
//     with dm_f.sqlwork do
//     begin
//          SQL.Text := Select_BunMiddle;
//          paramByName('BlCode').AsString := cbLarge.text;
//          Open;
//          while not eof do
//          begin
//               cbMiddle.items.add(FieldByName('BmCode').AsString);
//               next;
//          end;
//     end;
//     cbMiddle.itemIndex := -1;
//
//     cbSmall.items.clear;
//     with dm_f.sqlwork do
//     begin
//          SQL.Text := Select_BunSmall;
//          paramByName('BlCode').AsString := cbLarge.text;
//          paramByName('BmCode').AsString := cbMiddle.text;
//          Open;
//          while not eof do
//          begin
//               cbSmall.items.add(FieldByName('BsCode').AsString);
//               next;
//          end;
//     end;
//     cbSmall.itemIndex := -1;

     edtBuncode.text := makeBunCode(cbSmall.text, cbMiddle.text, cblarge.text);

end;

procedure TpummokReg_f.cbMiddleChange(Sender: TObject);
const
     Select_BunSmall = 'Select * from tblBunSmall' + #13#10 +
          'where BlCode=:BlCode and BmCode=:BmCode';
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'where BmCode=:BmCode';

begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_BunMiddle;
          paramByName('BmCode').AsString := CbMiddle.text;
          Open;
          edtMid.text := FieldByname('BmName').AsString;
     end;

//     cbSmall.items.clear;
//     with dm_f.sqlwork do
//     begin
//          SQL.Text := Select_BunSmall;
//          paramByName('BlCode').AsString := cbLarge.text;
//          paramByName('BmCode').AsString := cbMiddle.text;
//          Open;
//          while not eof do
//          begin
//               cbSmall.items.add(FieldByName('BsCode').AsString);
//               next;
//          end;
//     end;
     edtBuncode.text := makeBunCode(cbSmall.text, cbMiddle.text, cblarge.text)

end;

procedure TpummokReg_f.cbLargeExit(Sender: TObject);
begin
     cbLargeChange(self);
end;

procedure TpummokReg_f.cbMiddleExit(Sender: TObject);
begin
     cbMiddleChange(self);
end;

procedure TpummokReg_f.cbSmallExit(Sender: TObject);
begin
     cbSmallChange(self);
end;

procedure TpummokReg_f.cbJejoExit(Sender: TObject);
begin
     cbJejoChange(self);
end;

procedure TpummokReg_f.cbLocateExit(Sender: TObject);
begin
     cbLocateChange(self);
end;

function TpummokReg_f.isEmptyCheckCode:boolean;
begin
      result := true;
     with dm_f.sqltemp do
     begin
          SQL.Text := Select_Pummok;
          ParamByName('ID').AsString := lblID.caption;

     //     ParamByName('PmBarCode').AsString := edtCode.text;
          open;
     end;
     with dm_f.sqlwork do
     begin
          if not dm_f.sqltemp.isEmpty then
          begin
               result := false;
          end;
     end;
end;

procedure TpummokReg_f.BitBtn2Click(Sender: TObject);
var
     ImgName: string;
begin

     if Opd.Execute then
     begin
          Pic.Picture.LoadFromFile(Opd.FileName);
          ImgName := StrLower(PChar(Copy(Opd.FileName, Pos('.', Opd.FileName) + 1, Length(Opd.FileName) - Pos('.', Opd.FileName))));

          SaveImage(edtCode.text, Opd.FileName);

     end;

end;

procedure TpummokReg_f.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;

end;

procedure TpummokReg_f.SaveImage(varId: string; varImage: string);

begin

     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('Delete from tblImage');
          sql.Add('where id=:id');
          parambyname('id').asString := varId;
          execsql;

          close;
          sql.Clear;
          sql.Add('insert into tblImage');
          sql.add('(id, Fimage,imgKind, regDate) values');
          sql.Add('(:id, :Fimage,:imgKind, :regDate)');
          parambyname('id').asString := varId;
          parambyname('Fimage').LoadFromFile(varImage, ftblob);
          parambyname('imgKind').asString := ExtractFileExt(varImage);
          parambyname('regDate').asString := formatDateTime('YYYY-MM-DD', now);
          execsql;
     end;

end;

procedure TpummokReg_f.LoadImage(varID: string);
var
     aJpeg: TJpegImage;
     aBmp: Tbitmap;
     Buffer: PChar;
     MemSize: Integer;
     BStream: TStream;
     defaultImage: string;
begin
     try
          with dm_f.sqlTemp do
          begin
               Close;
               SQL.Clear;
               Sql.Add('select * from tblImage ');
               Sql.Add('where id= :id');
               ParamByname('id').asString := varID;
               Open;

               if not isEmpty then
               begin
                    if upperCase(FieldByName('imgKind').asString) = '.JPG' then
                    begin

                         BStream := CreateBlobStream(FieldByName('fImage'), bmRead);
                         MemSize := BStream.Size;
                         Inc(MemSize);
                         Buffer := AllocMem(MemSize);
                         try
                              BStream.Read(Buffer^, MemSize);
                              BStream.Position := 0;

                              aJpeg := TJPEGImage.Create;
                              try
                                   aJpeg.LoadFromStream(BStream);
                                   Pic.Picture.Assign(aJpeg);
                              finally
                                   aJpeg.Free;
                              end;
                         finally
                              FreeMem(Buffer, MemSize);
                         end;

                    end
                    else
                         if UpperCase(FieldByName('imgKind').asString) = '.BMP' then
                         begin

                              BStream := CreateBlobStream(FieldByName('fImage'), bmRead);
                              MemSize := BStream.Size;
                              Inc(MemSize);
                              Buffer := AllocMem(MemSize);
                              try
                                   BStream.Read(Buffer^, MemSize);
                                   BStream.Position := 0;

                                   aBMP := TBitMap.Create;
                                   try
                                        aBMP.LoadFromStream(BStream);
                                        Pic.Picture.Assign(aBMP);
                                   finally
                                        aBMP.Free;
                                   end;
                              finally
                                   FreeMem(Buffer, MemSize);
                              end;
                         end;

               end
               else
               begin
                    DefaultImage := ExtractFilePath(paramStr(0)) + 'icon\icon2.bmp';
                  if fileexists( DefaultImage) then
                      Pic.Picture.LoadFromFile(DefaultImage);
               end;
          end;

     except
          on E: Exception do
               //               ExceptLogging('LoadImage:' + E.Message);
     end;
end;

procedure TpummokReg_f.Button1Click(Sender: TObject);
begin
     //저장하면 기존 baljulist에서 찾아서 다 바꿔줘야한다.
     if lblCode.caption <> edtcode.Text then
     begin
           if  isEmptycheckCode = false then
           begin
                showmessage('이미 등록된 코드입니다');
               exit;
           end;

       if   CodeChange( lblCode.caption , edtcode.Text) = true then
        begin
           lblCode.caption:= edtcode.Text;
           showmessage('코드변경에 성공했습니다.');

        end
        else
        begin
           showmessage('코드변경에 실패했습니다.');
        end;
     end;

end;

end.

{
CREATE TABLE [dbo].[tblBalju] (
 [BjUser] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjTime] [varchar] (8) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjNo] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjUCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjType] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjQty] [int] NULL ,
 [BjAmount] [bigint] NULL ,
 [BjPCode] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjPNmae] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjPPrice] [float] NULL ,
 [BjPDanwi] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjPDanga] [float] NULL ,
 [BjPQty] [int] NULL ,
 [BjPAmount] [float] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[tblIbgo] (
 [IgUser] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgTime] [varchar] (8) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgNo] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgUCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgType] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgQty] [int] NULL ,
 [IgAmount] [float] NULL ,
 [IgPCode] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgPNmae] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgPPrice] [float] NULL ,
 [IgPDanwi] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgPDanga] [float] NULL ,
 [IgPQty] [int] NULL ,
 [IgPAmount] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblPummok] (
 [PmuCode] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmBarCode] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmName] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [Pmmodel] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmDanwi] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [Pmpic] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmBuncode] [varchar] (9) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmJejoCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmLocate] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmJegoMin] [int] NULL ,
 [PmJegoMax] [int] NULL ,
 [PmJego] [int] NULL ,
 [PmPrice] [float] NULL ,
 [PmRate] [float] NULL ,
 [PmRegDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblUpche] (
 [UcCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcSaupNo] [varchar] (12) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcSangho] [varchar] (30) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcType] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcDaepyo] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcUpJong] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcUpTae] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcDamdang] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcHp1] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcHp2] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcTel1] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcTel2] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcZip] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcJuso] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcPayDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcBankCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcBankSerial] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcMisu] [float] NULL ,
 [UcSday] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcUse] [varchar] (1) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcDiscount] [float] NULL ,
 [UcRegDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblCard] (
 [CdCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [CdName] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [CdRate] [float] NULL ,
 [CdPrefix1] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL ,
 [CdPrefix2] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblIbgoType] (
 [ItCode] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [ItName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tblBaljuType] (
 [BtCode] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [BtName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblInfo] (
 [IfHpName] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfHeadName] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfHeadQty] [int] NULL ,
 [IfSaupNo] [varchar] (12) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfTel] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfYoyangNo] [varchar] (15) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfZip] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfJuso] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBank] (
 [BkCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [BkName] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBunSmall] (
 [BsCode] [varchar] (9) COLLATE Korean_Wansung_CI_AS NULL ,
 [BsName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBunlarge] (
 [Blcode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [BlName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBunmiddle] (
 [BmCode] [varchar] (6) COLLATE Korean_Wansung_CI_AS NULL ,
 [BmName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblLocate] (
 [LcCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [LcName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [LcRemark] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblUpcheType] (
 [UtCode] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [UtName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

}
{alter table tblUpche add CdRegDay char(10) null,
CdUse char(1) null
alter table tblIbgoType add ItRegDay char(10) null,
ItUse char(1) null
alter table tblBaljuType add BtRegDay char(10) null,
BtUse char(1) null
alter table tblInfo add IfRegDay char(10) null,
IfUse char(1) null
alter table tblBank add BkRegDay char(10) null,
BkUse char(1) null

alter table tblBunSmall add BsRegDay char(10) null,
BsUse char(1) null
alter table tblBunlarge add BlRegDay char(10) null,
BlUse char(1) null
alter table tblBunmiddle add BmRegDay char(10) null,
BmUse char(1) null

alter table tblLocate add LcRegDay char(10) null,
LcUse char(1) null
alter table tblUpcheType add UtRegDay char(10) null,
UtUse char(1) null

tblCard
tblIbgoType
tblBaljuType
tblInfo
tblBank
tblBunSmall
tblBunlarge
tblBunmiddle
tblLocate
tblUpcheType

}

