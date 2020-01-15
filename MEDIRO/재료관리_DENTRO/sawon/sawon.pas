unit sawon;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     StdCtrls, ComCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,
     Db, Buttons,  ExtDlgs,
     AdvPanel, AdvPageControl, AdvGlowButton, EllipsLabel,  AdvObj,
  BaseGrid, AdvGrid, AdvUtil, JvExMask, JvToolEdit;

type
     TSawon_f = class(TForm)
          OpenPictureDialog1: TOpenPictureDialog;
          AdvPageControl1: TAdvPageControl;
          tsAdd: TAdvTabSheet;
          tsFam: TAdvTabSheet;
          tsHx: TAdvTabSheet;
          AdvPanelGroup2: TAdvPanelGroup;
          wLabel16: TEllipsLabel;
          wLabel17: TEllipsLabel;
          wLabel18: TEllipsLabel;
          wLabel19: TEllipsLabel;
          wLabel20: TEllipsLabel;
          wLabel21: TEllipsLabel;
          wLabel22: TEllipsLabel;
          wLabel23: TEllipsLabel;
          wLabel24: TEllipsLabel;
          wLabel25: TEllipsLabel;
          wLabel26: TEllipsLabel;
          wLabel27: TEllipsLabel;
          wLabel28: TEllipsLabel;
          wLabel29: TEllipsLabel;
          wLabel4: TEllipsLabel;
          wLabel9: TEllipsLabel;
          wLabel14: TEllipsLabel;
          wLabel1: TEllipsLabel;
          wLabel2: TEllipsLabel;
          wLabel3: TEllipsLabel;
          wLabel6: TEllipsLabel;
          wLabel8: TEllipsLabel;
          wLabel11: TEllipsLabel;
          wLabel12: TEllipsLabel;
          wLabel13: TEllipsLabel;
          wLabel38: TEllipsLabel;
          SaHomeJusoEdit: TEdit;
          SaHomeBunjiEdit: TEdit;
          SaJikJusoEdit: TEdit;
          SaJikBunjiEdit: TEdit;
          SaHojuNameEdit: TEdit;
          SaHojuJikupEdit: TEdit;
          SaChuChunJikUpEdit: TEdit;
          SaToijikEdit: TEdit;
          SaHujikEdit: TEdit;
          SaChuChunNameEdit: TEdit;
          SaTel1Edit: TEdit;
          SaTel2Edit: TEdit;
          SaEmailEdit: TEdit;
          SaHNameEdit: TEdit;
          SaENameEdit: TEdit;
          SaJagisogeEdit: TEdit;
          Panel4: TPanel;
          Image1: TImage;
          SaPictureEdit: TEdit;
          BtnPicReg: TAdvGlowButton;
          wLabel15: TEllipsLabel;
          wLabel34: TEllipsLabel;
          wLabel35: TEllipsLabel;
          wLabel36: TEllipsLabel;
          SaChuiMiEdit: TEdit;
          SaTeakGiEdit: TEdit;
          wLabel37: TEllipsLabel;
          wLabel39: TEllipsLabel;
          SaBigoEdit: TEdit;
          SaMyunHuEdit: TEdit;
          AdvPanel1: TAdvPanel;
          Button1: TAdvGlowButton;
          AdvPanel2: TAdvPanel;
          Button2: TAdvGlowButton;
          Button4: TAdvGlowButton;
          AdvPanelGroup1: TAdvPanelGroup;
          wLabel30: TEllipsLabel;
          wLabel5: TEllipsLabel;
          wLabel10: TEllipsLabel;
          wLabel31: TEllipsLabel;
          wLabel32: TEllipsLabel;
          wLabel33: TEllipsLabel;
          wLabel7: TEllipsLabel;
          wLabel40: TEllipsLabel;
          SaCdEdit: TEdit;
          SaNameEdit: TEdit;
          SaIdEdit: TEdit;
          SaPassEdit: TEdit;
          ColorBox1: TColorBox;
          AdvPanel3: TAdvPanel;
          AdvPanelGroup3: TAdvPanelGroup;
          wLabel42: TEllipsLabel;
          wLabel41: TEllipsLabel;
          Edit1: TEdit;
          AdvPanel4: TAdvPanel;
          SaveBtn: TAdvGlowButton;
          CanBtn: TAdvGlowButton;
          DelBtn: TAdvGlowButton;
          ClsBtn: TAdvGlowButton;
    SaHojuGwangyeEdit: TComboBox;
    SaChuChunGwanGyeEdit: TComboBox;
    SaJuguType: TComboBox;
    SAJIKCHEKEdit: TComboBox;
    SaJikMuEdit: TComboBox;
    SaHyulEkHyungEdit: TComboBox;
    SaJongGyoEdit: TComboBox;
    SaGunMuJiEdit: TComboBox;
    SaPowerEdit: TComboBox;
    SAJIKGUBEdit: TComboBox;
    SchEdit: TComboBox;
    GrdSawon: TAdvStringGrid;
    GrdFriend: TAdvStringGrid;
    GrdHistory: TAdvStringGrid;
    SaIbsailEdit: TJvDateEdit;
    SaToijikDayEdit: TJvDateEdit;
    SaHujikDayEdit: TJvDateEdit;
    SaJeibsailEdit: TJvDateEdit;
    SaJuminEdit: TJvDateEdit;
    SaBalyungilEdit: TJvDateEdit;
    SaHomeZipEdit: TMaskEdit;
    SaJikZipEdit: TMaskEdit;

          procedure BtnEbl(BF: Integer); //버튼초기화 케이스문 사용자정의프로시저
          procedure FieldClear; //필드초기화 사용자정의 프로시저
          procedure FieldClear2; //필드초기화 사용자정의 프로시저
          procedure FieldSet; //필드에 데이타넣기 사용자정의 프로시저
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure clsbtnClick(Sender: TObject);
          procedure delbtnClick(Sender: TObject);
          procedure BtnPicRegClick(Sender: TObject);
          procedure SaveBtnClick(Sender: TObject);
          procedure SelectData;
          procedure PostData1;
          procedure PostData2;
          procedure DeleteData1;
          procedure DeleteData2;
          procedure TeamLoad;
          procedure JikwiLoad;
          procedure GwonHanLoad;

          procedure GrdHistoryDrawMarker(Sender: TObject; ARow: Integer;
               var Text: string; var BCol, FCol: TColor; var FStyle:
               TFontStyles;
               var ImgIndex: Integer; var Value: Boolean);
          procedure GrdFriendDrawMarker(Sender: TObject; ARow: Integer;
               var Text: string; var BCol, FCol: TColor; var FStyle:
               TFontStyles;
               var ImgIndex: Integer; var Value: Boolean);
          procedure GrdFriendExit(Sender: TObject);
          procedure GrdHistoryExit(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure Button4Click(Sender: TObject);
          procedure GrdSawonRowChange(Sender: TObject);
          procedure GrdSawonMouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure SaCdEditExit(Sender: TObject);
          procedure SaHomeZipEditKeyPress(Sender: TObject; var Key: Char);
          procedure SaJikZipEditKeyPress(Sender: TObject; var Key: Char);
          procedure SaHomeJusoEditKeyPress(Sender: TObject; var Key: Char);
          procedure SaJikJusoEditKeyPress(Sender: TObject; var Key: Char);
          procedure SaHomeZipEditChange(Sender: TObject);
          procedure SaHomeJusoEditChange(Sender: TObject);
          procedure SaJikJusoEditChange(Sender: TObject);
          procedure SaJikZipEditChange(Sender: TObject);
          procedure CanBtnClick(Sender: TObject);
          procedure SaNameEditKeyPress(Sender: TObject; var Key: Char);
          procedure FormDestroy(Sender: TObject);
          procedure SaIdEditExit(Sender: TObject);

     private
          { Private declarations }
     public
          { Public declarations }
          CurrentFile: string;

          nCode: Integer;
     end;

var
     Sawon_f: TSawon_f;
     BefRegCode: string;
     InsFlag, ModFlag: Boolean;
implementation

uses main, DM, uFunctions;
{$R *.DFM}
const
     // Grid Columns Index

     // Query
     SQL_SELECT_DATA = 'SELECT * FROM tblSawon                    ';

     SQL_SELECT_DATA2 = 'SELECT * FROM tblSawonFriend              ' + #13#10 +
          'Where SfSabun= :SfSabun                              ';
     SQL_SELECT_DATA3 = 'SELECT * FROM tblSawonHistory             ' + #13#10 +
          'Where ShSabun= :ShSabun                              ';

     SQL_INSERT_DATA2 = 'INSERT INTO tblSawonFriend                ' + #13#10 +
          ' (SfSabun, SfName, SfGwanGye,                        ' + #13#10 +
          '  Sfnai, SfJikup,                                    ' + #13#10 +
          ' SfGita)                                             ' + #13#10 +
          ' VALUES                                              ' + #13#10 +
          ' (:SfSabun, :SfName, :SfGwanGye,                     ' + #13#10 +
          '  :Sfnai, :SfJikup,                                   ' + #13#10 +
          ' :SfGita)                                            ';

     SQL_INSERT_DATA3 = 'INSERT INTO tblSawonHistory               ' + #13#10 +
          ' (ShSabun, ShDate,                                   ' + #13#10 +
          '  ShGyungRyuk,                                       ' + #13#10 +
          ' ShBigo)                                             ' + #13#10 +
          ' VALUES                                              ' + #13#10 +
          ' (:ShSabun, :ShDate,                                 ' + #13#10 +
          '  :ShGyungRyuk,                                      ' + #13#10 +
          ' :ShBigo)                                            ';

     SQL_UPDATE_DATA2 = 'UPDATE tblSawonFriend SET ' + #13#10 +
          '                    SfSabun  = :SfSabun, ' + #13#10 +
          '                    Sfname = :SfName, ' + #13#10 +
          '                    SfGwanGye = :SfGwanGye, ' + #13#10 +
          '                    SfNai = :SfNai, ' + #13#10 +
          '                    SfJikup = :SfJikup, ' + #13#10 +
          '                    SfGita = :SfGita' + #13#10 +
          '              WHERE SfSabun= :SfSabun  and ' + #13#10 +
          '                    Sfname= :SfName2 and ' + #13#10 +
          '                    SfGwanGye= :SfGwangye2 and' +
          '                    SfNai= :SfNai2 and' +
          '                    SfJikup= :SfJikup2 and' +
          '                    SfGita= :SfGita2';

     SQL_UPDATE_DATA3 = 'UPDATE tblSawonHistory SET ' + #13#10 +
          '                    ShSabun  = :ShSabun, ' + #13#10 +
          '                    ShDate = :ShDate, ' + #13#10 +
          '                    ShGyungRyuk = :ShGyungRyuk, ' + #13#10 +
          '                    ShBigo = :ShBigo ' + #13#10 +
          '              where ShSabun  = :ShSabun, ' + #13#10 +
          '                    ShDate = :ShDate2, ' + #13#10 +
          '                    ShGyungRyuk = :ShGyungRyuk2, ' + #13#10 +
          '                    ShBigo = :ShBigo2';

     SQL_DELETE_DATA2 = 'DELETE FROM tblSawonFriend' + #13#10 +
          '              WHERE SfSabun=:SfSabun  and ' + #13#10 +
          '                    Sfname=:SfName2 and ' + #13#10 +
          '                    SfGwanGye=:SfGwangye2 and' +
          '                    SfNai=:SfNai2 and' +
          '                    SfJikup=:SfJikup2 and' +
          '                    SfGita=:SfGita2';

     SQL_DELETE_DATA3 = 'DELETE FROM tblSawonHistory' + #13#10 +
          '              where ShSabun  = :ShSabun, ' + #13#10 +
          '                    ShDate = :ShDate2, ' + #13#10 +
          '                    ShGyungRyuk = :ShGyungRyuk2, ' + #13#10 +
          '                    ShBigo = :ShBigo2';

procedure TSawon_f.SelectData;
begin

     grdSawon.RemoveRows(1, grdSawon.RowCount - 1);

     with DM_f.SqlWork do
     begin
          sql.Clear; // RealGrid.Clear;

          Sql.Text := SQL_SELECT_DATA;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdSawon.AddRow; // 그리드에 빈 로우를 추가
                    grdSawon.Cells[0, grdSawon.RowCount - 1]  :=
                         FieldByName('SaBun').AsString; //챠트
                    grdSawon.Cells[1, grdSawon.RowCount - 1]  :=
                         FieldByName('SaName1').AsString; //성명
                    Next;
               end;
     end;

     with DM_f.SqlWork do
     begin
          sql.Clear; // RealGrid.Clear;

          Sql.Text := SQL_SELECT_DATA2;
          ParamByName('SfSabun').AsString := SaCdEdit.text;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdFriend.AddRow; // 그리드에 빈 로우를 추가
                    grdFriend.Cells[0,  grdFriend.RowCount - 1] :=
                         FieldByName('Sfname').AsString; //챠트
                     grdFriend.Cells[1,  grdFriend.RowCount - 1] :=
                         FieldByName('SfGwangye').AsString; //성명
                     grdFriend.Cells[2,  grdFriend.RowCount - 1] :=
                         FieldByName('SfNai').AsString; //전화
                     grdFriend.Cells[3,  grdFriend.RowCount - 1] :=
                         FieldByName('sfJikup').AsString; //전화핸드폰
                     grdFriend.Cells[4, grdFriend.RowCount - 1] :=
                         FieldByName('SfGita').AsString; //팀
                     grdFriend.Cells[5,  grdFriend.RowCount - 1] :=
                         FieldByName('Sfname').AsString; //챠트
                     grdFriend.Cells[6,  grdFriend.RowCount - 1] :=
                         FieldByName('SfGwangye').AsString; //성명
                     grdFriend.Cells[7,  grdFriend.RowCount - 1] :=
                         FieldByName('SfNai').AsString; //전화
                     grdFriend.Cells[8,  grdFriend.RowCount - 1] :=
                         FieldByName('sfJikup').AsString; //전화핸드폰
                     grdFriend.Cells[9,  grdFriend.RowCount - 1] :=
                         FieldByName('SfGita').AsString; //팀

                    Next;
               end;
     end;

     with DM_f.SqlWork do
     begin
          sql.Clear; // RealGrid.Clear;

          Sql.Text := SQL_SELECT_DATA3;
          ParamByName('ShSabun').AsString := SaCdEdit.text;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdHistory.AddRow; // 그리드에 빈 로우를 추가
                    grdHistory.Cells[0, grdHistory.RowCount - 1] :=
                         FieldByName('ShDate').AsString; //성명
                    grdHistory.Cells[1, grdHistory.RowCount - 1] :=
                         FieldByName('ShGyungRyuk').AsString; //챠트
                    grdHistory.cells[2, grdHistory.RowCount - 1] :=
                         FieldByName('ShBigo').AsString; //전화
                    grdHistory.Cells[3, grdHistory.RowCount - 1] :=
                         FieldByName('ShDate').AsString; //성명
                    grdHistory.Cells[4, grdHistory.RowCount - 1] :=
                         FieldByName('ShGyungRyuk').AsString; //챠트
                    grdHistory.Cells[5, grdHistory.RowCount - 1] :=
                         FieldByName('ShBigo').AsString; //전화
                    Next;
               end;
     end;

end;

procedure TSawon_f.BtnEbl(BF: Integer); //버튼초기화 케이스문 사용자정의프로시저
begin
     case Bf of
          0:
               begin
                    DelBtn.Enabled := True;
                    SaveBtn.Enabled := True;
                    CanBtn.Enabled := True;
                    ClsBtn.Enabled := True;
                  //  InPnl2.Enabled := True;
                    GrdSawon.Enabled := True;
               end;
          1:
               begin
                    SaveBtn.Enabled := True;
                    DelBtn.Enabled := True;
                    CanBtn.Enabled := True;
                    ClsBtn.Enabled := True;
                  //  InPnl2.Enabled := True;
                    GrdSawon.Enabled := True;
               end;
     end;
end;

procedure TSawon_f.FieldClear; //필드초기화(입력항목초기화)사용자정의 프로시저
begin


     SchEdit.Text := '';


     SACdEdit.Text := '';
     SAIDEdit.Text := '';
     SAPASSEdit.Text := '';
     SAPOWEREdit.Text := '';
     SANAMEEdit.Text := '';
     SAHNAMEEdit.Text := '';
     SAeNAMEEdit.Text := '';
     SAJUMINEdit.Text := '';
     SAPICTUREEdit.Text := '';
     SAIBSAIlEdit.Text := '';
     SAJIKGUBEdit.Text := '';
     SAJIKMUEdit.Text := '';
     SAJIKCHEKEdit.Text := '';
     SAHUJIKEdit.Text := '';
     SAHUJIKdayEdit.Text := '';
     SATOIJIKEdit.text := '';
     SATOIJIKDayEdit.Text := '';
     SAHomeZIPEdit.text := '';
     SAHomeJusoEdit.Text := '';
     SAHomeBunjiEdit.Text := '';
     SAJikzIPEdit.text := '';
     SAJIKJusoEdit.text := '';
     SAJIKBunjiEdit.text := '';
     SATEL1Edit.Text := '';
     SATEL2Edit.Text := '';
     SaGunmujiEdit.Text := '';
     SaBalyungilEdit.Text := '';
     SaHojuNameEdit.Text := '';
     SaHojuGwangyeEdit.Text := '';
     SaHojuJikupEdit.Text := '';
     SaChuChunNameEdit.Text := '';
     SaChuChunGwanGyeEdit.Text := '';
     SaChuChunJikUpEdit.Text := '';
     SaJeIbSaIlEdit.Text := '';
     SaHyulEkHyungEdit.Text := '';
     SaJongGyoEdit.Text := '';
     SaChuiMiEdit.Text := '';
     SaTeakGiEdit.Text := '';
     SAEmailEdit.Text := '';
     SABigoEdit.Text := '';
     SaJagisogeEdit.Text := '';
     SaJuguType.Text := '';
     SaMyunHuEdit.Text := '';
     Image1.Picture := nil;
     grdFriend.Clear;
     grdHistory.Clear;

end;

procedure TSawon_f.FieldClear2; //필드초기화(입력항목초기화)사용자정의 프로시저
begin

     SACdEdit.Text := '';
     SAIDEdit.Text := '';
     SAPASSEdit.Text := '';
     SAPOWEREdit.Text := '';
     //     SANAMEEdit.Text := '';
     SAHNAMEEdit.Text := '';
     SAeNAMEEdit.Text := '';
     SAJUMINEdit.Text := '';
     SAPICTUREEdit.Text := '';
     SAIBSAIlEdit.Text := '';
     SAJIKGUBEdit.Text := '';
     SAJIKCHEKEdit.Text := '';
     SAJIKMUEdit.Text := '';
     SAHUJIKEdit.Text := '';
     SAHUJIKdayEdit.Text := '';
     SATOIJIKEdit.text := '';
     SATOIJIKDayEdit.Text := '';
     SAHomeZIPEdit.text := '';
     SAHomeJusoEdit.Text := '';
     SAHomeBunjiEdit.Text := '';
     SAJikzIPEdit.text := '';
     SAJIKJusoEdit.text := '';
     SAJIKBunjiEdit.text := '';
     SATEL1Edit.Text := '';
     SATEL2Edit.Text := '';
     SaGunmujiEdit.Text := '';
     SaBalyungilEdit.Text := '';
     SaHojuNameEdit.Text := '';
     SaHojuGwangyeEdit.Text := '';
     SaHojuJikupEdit.Text := '';
     SaChuChunNameEdit.Text := '';
     SaChuChunGwanGyeEdit.Text := '';
     SaChuChunJikUpEdit.Text := '';
     SaJeIbSaIlEdit.Text := '';
     SaHyulEkHyungEdit.Text := '';
     SaJongGyoEdit.Text := '';
     SaChuiMiEdit.Text := '';
     SaTeakGiEdit.Text := '';
     SAEmailEdit.Text := '';
     SABigoEdit.Text := '';
     SaJagisogeEdit.Text := '';
     SaJuguType.Text := '';
     SaMyunHuEdit.Text := '';
     Image1.Picture := nil;

     grdFriend.Clear;
     grdHistory.Clear;

end;

procedure TSawon_f.FieldSet; //EDitBox에 데이터집어넣기  사용자정의 프로시저
begin

     if dm_f.Sqlwork.RecordCount > 0 then
     begin
          with dm_f.SqlWork do
          begin
               SACdEdit.Text := FieldByName('SABUN').AsString;
               SAIDEdit.Text := FieldByName('SAID').AsString;
               SAPASSEdit.Text := FieldByName('SAPASS').AsString;
               SAPOWEREdit.Text := FieldByName('SAPOWER').AsString;
               SANAMEEdit.Text := FieldByName('SANAME1').AsString;
               SAHNAMEEdit.Text := FieldByName('SANAME2').AsString;
               SAeNAMEEdit.Text := FieldByName('SANAME3').AsString;
               SAJUMINEdit.Text := FieldByName('SAJUMINNO').AsString;
               SAPICTUREEdit.Text := FieldByName('SAPICTURE').AsString;
               SAEmailEdit.Text := FieldByName('SaEmail').AsString;
               SaIbSaIlEdit.Text := FieldByName('SAIBSAIL').AsString;
               if FieldByName('SAJIKMU').AsString <> '' then
                    SaJikMUEdit.itemindex :=
                         StrToInt(FieldByName('SAJIKMU').AsString) - 1
               else
                    SaJikMUEdit.Text := '';
               SaJuguType.Text := FieldByName('SAJUGUTYPE').AsString;
               SaJagisogeEdit.Text := FieldByName('SAJAGISOGE').AsString;
               if FieldByName('SAJIKCHEK').AsString <> '' then
                    SaJikchekEdit.itemindex :=
                         StrToInt(FieldByName('SAJIKCHEK').AsString) - 1
               else
                    SaJikchekEdit.itemindex := -1;
               if FieldByName('SAJIKGUB').AsString <> '' then
                    SaJikGubEdit.itemindex :=
                         StrToInt(FieldByName('SAJIKGUB').AsString) - 1
               else
                    SAJIKGubEdit.itemindex := -1;

               SAHUJIKEdit.Text := FieldByName('SAHUJIKSAYU').AsString;
               SAHUJIKdayEdit.Text := FieldByName('SAHUJIKIL').AsString;
               SATOIJIKEdit.text := FieldByName('SATOIJIKSAYU').AsString;
               SATOIJIKDayEdit.Text := FieldByName('SATOIJIKIL').AsString;
               SAHomeZIPEdit.text :=
                    DisplayDash(FieldByName('SAZIP1').AsString);
               SAJikZIPEdit.text := DisplayDash(FieldByName('SAZIP2').AsString);
               with dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from tblPost');
                    Sql.Add('Where zipcode= :ZipCode');
                    ParamByName('ZipCode').AsString :=
                         DisplayDash(Dm_f.SqlWork.FieldByName('Sazip1').AsString);
                    Open;
                    SAHomeJusoEdit.Text := Trim(FieldByName('Sido').AsString)
                         + ' ' + Trim(FieldByName('GuGun').AsString)
                         + ' ' + Trim(FieldByName('DOng').AsString);
               end;
               SAHomeBunjiEdit.Text := FieldByName('SAJUSO1').AsString;

               with dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from tblPost');
                    Sql.Add('Where zipcode= :ZipCode');
                    ParamByName('ZipCode').AsString :=
                         DisplayDash(Dm_f.SqlWork.FieldByName('Sazip2').AsString);
                    Open;
                    SAJIKJusoEdit.text := Trim(FieldByName('Sido').AsString)
                         + ' ' + Trim(FieldByName('GuGun').AsString)
                         + ' ' + Trim(FieldByName('DOng').AsString);
               end;
               SAJIKBunjiEdit.text := FieldByName('SAJUSO2').AsString;

               SATEL1Edit.Text := FieldByName('SATEL1').AsString;
               SATEL2Edit.Text := FieldByName('SATEL2').AsString;
               if FieldByName('SaGunmuji').AsString <> '' then
                    SaGunmujiEdit.itemindex :=
                         StrToInt(FieldByName('SaGunmuji').AsString) - 1
               else
                    SaGunmujiEdit.itemindex := -1; //팀
               SaBalyungilEdit.Text := FieldByName('SaBalyungil').AsString;
               SaHojuNameEdit.Text := FieldByName('SaHojuName').AsString;
               SaHojuGwangyeEdit.Text := FieldByName('SaHojuGwangye').AsString;
               SaHojuJikupEdit.Text := FieldByName('SaHojuJikup').AsString;
               SaChuChunNameEdit.Text := FieldByName('SaChuChunName').AsString;
               SaChuChunGwanGyeEdit.Text :=
                    FieldByName('SaChuChunGwanGye').AsString;
               SaChuChunJikUpEdit.Text :=
                    FieldByName('SaChuChunJikUp').AsString;
               SaJeIbSaIlEdit.Text := FieldByName('SaJeIbSaIl').AsString;
               SaHyulEkHyungEdit.Text := FieldByName('SaHyulEkHyung').AsString;
               SaJongGyoEdit.Text := FieldByName('SaJongGyo').AsString;
               SaChuiMiEdit.Text := FieldByName('SaChuiMi').AsString;
               SaTeakGiEdit.Text := FieldByName('SaTeakGi').AsString;
               SaBigoEdit.Text := FieldByName('SaBigo').AsString;
               SaMyunHuEdit.Text := FieldByName('SaMyunHu').AsString;
               if FileExists(ExtractFileDir(application.exename) + '/SPicture/'
                    + dm_f.SqlWork.FieldByName('SaBun').AsString + '.BMP') then
               begin
                    CurrentFile := ExtractFileDir(application.exename) +
                         '/SPicture/' +
                         dm_f.SqlWork.FieldByName('SaBun').AsString +
                         '.BMP';
                    Image1.Picture.LoadFromFile(CurrentFile);
               end
               else
                    Image1.Picture := nil;
          end;
     end;
end;


procedure TSawon_f.FormShow(Sender: TObject);
begin
     //     with Sawon_f do
     //     begin
     //          Left := DStandard_f.PnlRegi.Width + 10;
     //          Top := DStandard_f.RxClock1.Height + DStandard_f.ToolBar1.height;
     //          Height := DStandard_f.PageControl1.Height + 5;
     //          Width := DStandard_f.PageControl1.Width + 10;
     //     end;
     caption := '사원등록';
     FieldClear;
     TeamLoad;
     JikwiLoad;
     GwonHanLoad;

     SelectData;

end;

procedure TSawon_f.TeamLoad;
begin
     //팀 콤보박스에 아이템 불러오기
     SaGunmujiEdit.clear;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from tblbusu');
          Sql.Add('order by busucode');
          Open;
          while not eof do
          begin
               SaGunmujiEdit.items.add(FieldByName('busuname').AsString);
               next;
          end;
     end;

end;

procedure TSawon_f.GwonHanLoad;
begin

     SaPowerEdit.clear;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from tblGwonHan');
          Sql.Add('order by ghcode');
          Open;
          while not eof do
          begin
               SaPowerEdit.items.add(FieldByName('ghname').AsString);
               next;
          end;
     end;

end;

procedure TSawon_f.JikwiLoad;
begin

     SaJikGubEdit.clear;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from tblJikWi');
          Sql.Add('order by Jwcode');
          Open;
          while not eof do
          begin
               SaJikGubEdit.items.add(FieldByName('Jwname').AsString);
               next;
          end;
     end;

end;



procedure TSawon_f.clsbtnClick(Sender: TObject);
begin


     close;

end;

procedure TSawon_f.delbtnClick(Sender: TObject);
begin
     if MessageDlg('선택하신 자료를 정말로 삭제합니까?', MtConfirmation, [mbYes,
          mbNo], 0) = mrYes then
     begin

          with dm_f.sqlwork do
          begin
               close;
               SQL.Clear;
               SQL.ADD('Delete From tblSawon');
               Sql.Add('Where Sabun = :Code ');
               ParamByName('Code').AsString := SaCdEdit.Text;
               ExecSQL;
          end;
     end;
     SelectData;
     FieldClear;
end;

procedure TSawon_f.BtnPicRegClick(Sender: TObject);
var
     DFName: string;
begin
     if SacdEdit.Text <> '' then
     begin
          if OpenPictureDialog1.Execute then
          begin
               CurrentFile := OpenPictureDialog1.FileName;
               //    SaveStyles;
               SaPictureEdit.text := SaCdedit.Text + '.BMP';
               ;
               Image1.Picture.LoadFromFile(CurrentFile);
               //    RestoreStyles;
               if not Directoryexists(ExtractFileDir(application.exename) + '\SPicture\') then
                    CreateDir(ExtractFileDir(application.exename) + '\SPicture\');
               DFName := ExtractFileDir(application.exename) + '\SPicture\' +
                    SaCdedit.Text +
                    '.BMP';
               CopyFile(PChar(OpenPictureDialog1.FileName), PChar(DFName),
                    False);
          end;
     end
     else
     begin
          Showmessage('사진을 등록할 사원이 없습니다.');
          Exit;
     end;
end;

procedure TSawon_f.SaveBtnClick(Sender: TObject);
var
   insMode : boolean;
begin



     if sanameedit.text = '' then
     begin
          showmessage('성명을 입력하세요.');
          sanameedit.setfocus;
          exit;
     end;
     if saIDedit.text = '' then
     begin
          showmessage('ID를 입력하세요.');
          saIDedit.setfocus;
          exit;
     end;
     if saPAssEdit.text = '' then
     begin
          showmessage('Password를 입력하세요.');
          saPAssEdit.setfocus;
          exit;
     end;
     if saCdedit.text = '' then
     begin
          showmessage('사번을 입력하세요.');
          saCdedit.setfocus;
          exit;
     end;


     with dm_f.sqlTemp do
     begin
          close;
          SQL.Clear;
          SQL.Add('Select * from tblSawon');
          Sql.Add('Where Sabun=:Sabun');
          ParambyName('Sabun').AsString := SaCdEdit.Text;
          Open;
          if IsEmpty then
          begin
            insMode := true;

          end
          else
          begin
            insMode := false;

          end;
     end;
       with dm_f.sqlwork do
       begin
            close;
            SQL.Clear;

            if insMode = true then
            begin
                SQL.Add('Insert into tblSawon');
                Sql.Add('(SABUN, SAID, SAPASS,SAPOWER,SANAME1,SANAME2,');
                Sql.Add('SANAME3,SAJUMINNO,SAPICTURE,SaEmail,SAIBSAIL,SAJIKGUB,SAJIKMU,');
                Sql.Add('SAJIKCHEK,SAHUJIKSAYU,SAHUJIKIL,SATOIJIKSAYU,');
                Sql.Add('SATOIJIKIL,SAZIP1,SAJUSO1,SAZIP2,SAJUSO2,SATEL1,');
                Sql.Add('SATEL2,SaGunmuji,SaBalyungil,SaHojuName,SaHojuGwangye,');
                Sql.Add('SaHojuJikup,SaChuChunName,SaChuChunGwanGye,SaChuChunJikUp,Sajugutype,');
                Sql.Add('SaJeIbSaIl,SaHyulEkHyung,SaJongGyo,SaChuiMi,SaTeakGi, SaBigo, SAJAGISOGE, SAMYUNHU) values');
                Sql.Add('(:SABUN, :SAID, :SAPASS, :SAPOWER, :SANAME1, :SANAME2,');
                Sql.Add(':SANAME3, :SAJUMINNO, :SAPICTURE, :SaEmail, :SAIBSAIL, :SAJIKGUB,:SAJIKMU,');
                Sql.Add(':SAJIKCHEK, :SAHUJIKSAYU, :SAHUJIKIL, :SATOIJIKSAYU,');
                Sql.Add(':SATOIJIKIL, :SAZIP1, :SAJUSO1, :SAZIP2, :SAJUSO2, :SATEL1,');
                Sql.Add(':SATEL2, :SaGunmuji, :SaBalyungil, :SaHojuName, :SaHojuGwangye,');
                Sql.Add(':SaHojuJikup, :SaChuChunName, :SaChuChunGwanGye, :SaChuChunJikUp,:Sajugutype,');
                Sql.Add(':SaJeIbSaIl, :SaHyulEkHyung, :SaJongGyo, :SaChuiMi, :SaTeakGi, :SaBigo, :SAJAGISOGE, :SaMyunHu)');
            end
            else
            begin

                SQL.Add('Update tblSawon Set');
                Sql.Add( 'SAID=:Said, SAPASS=:SaPass,SAPOWER=:SaPower,SANAME1=:SaName1,SANAME2=:Saname2,');
                Sql.Add('SANAME3=:Saname3,SAJUMINNO=:SaJuminNo,SAPICTURE=:SaPicture,SaEmail=:SaEmail, SAIBSAIL=:SaIbsail,SAJIKGUB=:SaJikgub,SAJIKMU=:SAJIKMU,');
                Sql.Add('SAJIKCHEK=:SaJikChek,SAHUJIKSAYU=:SaHujikSayu,SAHUJIKIL=:SaHujikIl,SATOIJIKSAYU=:SaToiJikSayu,');
                Sql.Add('SATOIJIKIL=:SaToiJikIl,SAZIP1=:SaZip1,SAJUSO1=:SaJuSo1,SAZIP2=:SaZip2,SAJUSO2=:SaJuso2,SATEL1=:SaTel1,SAJAGISOGE=:SAJAGISOGE,');
                Sql.Add('SATEL2=:SaTel2,SaGunmuji=:SagunMuji,SaBalyungil=:SaBalyungIl,SaHojuName=:SaHojuName,SaHojuGwangye=:SaHojuGwanGye,Sajugutype=:Sajugutype,');
                Sql.Add('SaHojuJikup=:sahojuJikup,SaChuChunName=:SaChuChunName,SaChuChunGwanGye=:SaChuChunGwangye,SaChuChunJikUp=:SaChuChunJikup,');
                Sql.Add('SaJeIbSaIl=:SaJeIbSaIl,SaHyulEkHyung=:SaHyulEkHyung,SaJongGyo=:SaJongGyo,SaChuiMi=:SaChuiMi,SaTeakGi=:SaTeakGi, Sabigo=:Sabigo, SaMyunHu=:SaMyunHu');
                SQL.Add('Where Sabun = :Sabun');

            end;
            ParamByName('SABUN').AsString            := SaCdEdit.Text;
            ParamByName('SAID').AsString             := SaIdEDit.Text;
            ParamByName('SAPASS').AsString           := SaPassEDit.Text;
            ParamByName('SAPOWER').AsString          := SaPowerEDit.Text;
            ParamByName('SANAME1').AsString          := SaNameEdit.Text;
            ParamByName('SANAME2').AsString          := SaHNameEDit.Text;
            ParamByName('SANAME3').AsString          := SaENameEDit.Text;
            ParamByName('SAJUMINNO').AsString        := SaJuminEDit.Text;
            ParamByName('SAPICTURE').AsString        := SaPictureEdit.Text;
            ParamByName('SAEmail').AsString          := SaEmailEdit.Text;
            ParamByName('SAIBSAIL').AsString         := SaIbSaIlEdit.Text;
            ParamByName('SAJIKGUB').AsString         := IntToStr((SaJikGubEdit.itemindex) + 1);
            ParamByName('SAJIKCHEK').AsString        := IntToStr((SaJikchekEDit.itemindex) + 1);
            ParamByName('SAJIKMU').AsString          := IntToStr((SaJikMuEdit.itemindex) + 1);
            ParamByName('SAHUJIKSAYU').AsString      := SaHujikEDit.Text;
            ParamByName('SAHUJIKIL').AsString        := SaHujikDayEDit.Text;
            ParamByName('SATOIJIKSAYU').AsString     := SaToijikEDit.Text;
            ParamByName('SATOIJIKIL').AsString       := SaToijikDayEDit.Text;
            ParamByName('SAZIP1').AsString           := Deldash(SaHomeZipEDit.Text);
            ParamByName('SAJUSO1').AsString          := SaHomeBunjiEdit.Text;
            ParamByName('SAZIP2').AsString           :=  Deldash(SaJikZipEdit.Text);
            ParamByName('SAJUSO2').AsString          := SaJikBunjiEdit.Text;
            ParamByName('SATEL1').AsString           := SaTel1Edit.Text;
            ParamByName('SATEL2').AsString           := SaTel2Edit.Text;
            ParamByName('SaGunmuji').AsString        :=   IntToStr((SaGunmujiEdit.itemindex) + 1);
            ParamByName('SaBalyungil').AsString      := SaBalyungilEdit.Text;
            ParamByName('SaHojuName').AsString       := SaHojuNameEdit.Text;
            ParamByName('SaHojuGwangye').AsString    := SaHojuGwangyeEdit.Text;
            ParamByName('SaHojuJikup').AsString      := SaHojuJikupEdit.Text;
            ParamByName('SaChuChunName').AsString    := SaChuChunNameEdit.Text;
            ParamByName('SaChuChunGwanGye').AsString := SaChuChunGwanGyeEdit.Text;
            ParamByName('SaChuChunJikUp').AsString   := SaChuChunJikUpEdit.Text;
            ParamByName('SaJeIbSaIl').AsString       := SaJeIbSaIlEdit.Text;
            ParamByName('SaHyulEkHyung').AsString    := SaHyulEkHyungEdit.Text;
            ParamByName('SaJongGyo').AsString        := SaJongGyoEdit.Text;
            ParamByName('SaChuiMi').AsString         := SaChuiMiEdit.Text;
            ParamByName('SaTeakGi').AsString         := SaTeakGiEdit.Text;
            ParamByName('SaBigo').AsString           := SaBigoEdit.Text;
            ParamByName('SaJuguType').AsString       := SaJuguType.Text;
            ParamByName('SaJagisoge').AsString       := SajagisogeEdit.Text;
            ParamByName('SaMyunHu').AsString         := SaMyunHuEdit.Text;
            ExecSQL;
            Showmessage('등록되었습니다.');
       end;





     SelectData;
end;

procedure TSawon_f.PostData1; //일괄저장 방법
var
     nRow: Integer;
begin
//     with Dm_f.SqlWork, GrdFriend do
//     begin
//          // dbMain.StartTransaction;
//          // RDBMS 사용시 주석을 지워 주세요, 트랜잭션 처리 방법
//          try
//               for nRow := 0 to RowCount - 1 do
//               begin
//                    if RowState[nRow] = wrUpdated then
//                         SQL.Text := SQL_UPDATE_DATA2
//                    else if RowState[nRow] = wrInserted then
//                         SQL.Text := SQL_INSERT_DATA2;
//                    if (RowState[nRow] = wrUpdated) then
//                    begin
//                         ParamByName('SfSabun').AsString := SaCdEdit.Text;
//                         ParamByName('SfName').AsString := Cells[0,
//                              nRow];
//                         ParamByName('SfGwanGye').AsString := Cells[1,
//                              nRow];
//                         ParamByName('SfNai').AsString := Cells[2,
//                              nRow];
//                         ParamByName('SfJikUp').AsString := Cells[3,
//                              nRow];
//                         ParamByName('SfGita').AsString := Cells[4,
//                              nRow];
//                         ParamByName('SfName2').AsString := Cells[5,
//                              nRow];
//                         ParamByName('SfGwanGye2').AsString := Cells[6,
//                              nRow];
//                         ParamByName('SfNai2').AsString := Cells[7,
//                              nRow];
//                         ParamByName('SfJikUp2').AsString := Cells[8,
//                              nRow];
//                         ParamByName('SfGita2').AsString := Cells[9,
//                              nRow];
//                         ExecSQL;
//                    end;
//
//                    if (RowState[nRow] = wriNSERted) then
//                    begin
//                         ParamByName('SfSabun').AsString := SaCdEdit.Text;
//                         ParamByName('SfName').AsString := Cells[0,
//                              nRow];
//                         ParamByName('SfGwanGye').AsString := Cells[1,
//                              nRow];
//                         ParamByName('SfNai').AsString := Cells[2,
//                              nRow];
//                         ParamByName('SfJikUp').AsString := Cells[3,
//                              nRow];
//                         ParamByName('SfGita').AsString := Cells[4,
//                              nRow];
//                         ExecSQL;
//                    end;
//                    //dbMain.Commit;
//               end;
//               for nRow := 0 to RowCount - 1 do
//                    RowState[nRow] := wrNormal;
//               Refresh;
//          except
//               on E: Exception do
//               begin
//                    //dbMain.Rollback;
//                    ShowMessage(E.Message + ' [저장오류]');
//               end;
//          end;
//     end;
end;

procedure TSawon_f.PostData2; //일괄저장 방법
var
     nRow: Integer;
begin

//     with Dm_f.SqlWork, GrdHistory do
//     begin
//          // dbMain.StartTransaction;
//          // RDBMS 사용시 주석을 지워 주세요, 트랜잭션 처리 방법
//          try
//               for nRow := 0 to RowCount - 1 do
//               begin
//                    if RowState[nRow] = wrUpdated then
//                         SQL.Text := SQL_UPDATE_DATA3
//                    else if RowState[nRow] = wrInserted then
//                         SQL.Text := SQL_INSERT_DATA3;
//                    if (RowState[nRow] = wrUpdated) then
//                    begin
//                         ParamByName('ShSabun').AsString := SaCdEdit.Text;
//                         ParamByName('ShDate').AsString := Cells[0,
//                              nRow];
//                         ParamByName('ShGyungRyuk').AsString := Cells[1,
//                              nRow];
//                         ParamByName('ShBigo').AsString := Cells[2,
//                              nRow];
//                         ParamByName('ShDate2').AsString := Cells[3,
//                              nRow];
//                         ParamByName('ShGyungRyuk2').AsString := Cells[4,
//                              nRow];
//                         ParamByName('ShBigo2').AsString := Cells[5,
//                              nRow];
//                         ExecSQL;
//                    end;
//
//                    if (RowState[nRow] = wriNSERted) then
//                    begin
//                         Showmessage('1');
//                         ParamByName('ShSabun').AsString := SaCdEdit.Text;
//                         ParamByName('ShDate').AsString := Cells[0,
//                              nRow];
//                         ParamByName('ShGyungRyuk').AsString := Cells[1,
//                              nRow];
//                         ParamByName('ShBigo').AsString := Cells[2,
//                              nRow];
//                         ExecSQL;
//                    end;
//                    //dbMain.Commit;
//               end;
//               for nRow := 0 to RowCount - 1 do
//                    RowState[nRow] := wrNormal;
//               Refresh;
//          except
//               on E: Exception do
//               begin
//                    //dbMain.Rollback;
//                    ShowMessage(E.Message + ' [저장오류]');
//               end;
//          end;
//     end;
end;

procedure TSawon_f.DeleteData1;
begin
//     if Application.MessageBox('삭제하십니까?', '삭제', MB_YESNO) = IDYES then
//          with Dm_f.SqlWork, GrdFriend do
//          begin
//               //dbMain.StartTransaction;
//               try
//                    SQL.Text := SQL_DELETE_DATA2;
//                    ParamByName('SfName2').AsString := Cells[5, Row];
//                    ParamByName('SfGwanGye2').AsString := Cells[6,
//                         Row];
//                    ParamByName('SfNai2').AsString := Cells[7, Row];
//                    ParamByName('SfJikUp2').AsString := Cells[8, Row];
//                    ParamByName('SfGita2').AsString := Cells[9, Row];
//                    ExecSQL;
//                    //dbMain.Commit;
//                    DeleteRow(Row); // 또는 SelectData;
//               except
//                    on E: Exception do
//                    begin
//                         //dbMain.Rollback;
//                         ShowMessage(E.Message + ' [삭제오류]');
//                    end;
//               end;
//          end;
end;

procedure TSawon_f.DeleteData2;
begin
//     if Application.MessageBox('삭제하십니까?', '삭제', MB_YESNO) = IDYES then
//          with Dm_f.SqlWork, GrdHistory do
//          begin
//               //dbMain.StartTransaction;
//               try
//                    SQL.Text := SQL_DELETE_DATA2;
//                    ParamByName('ShDate2').AsString := Cells[3, Row];
//                    ParamByName('ShGyungRyuk2').AsString := Cells[4,
//                         Row];
//                    ParamByName('ShBigo2').AsString := Cells[5, Row];
//                    ExecSQL;
//                    //dbMain.Commit;
//                    DeleteRow(Row); // 또는 SelectData;
//               except
//                    on E: Exception do
//                    begin
//                         //dbMain.Rollback;
//                         ShowMessage(E.Message + ' [삭제오류]');
//                    end;
//               end;
//          end;
end;

procedure TSawon_f.GrdHistoryDrawMarker(Sender: TObject; ARow: Integer;
     var Text: string; var BCol, FCol: TColor; var FStyle: TFontStyles;
     var ImgIndex: Integer; var Value: Boolean);
begin
//     case grdHistory.RowState[ARow] of
//          wrUpdated: BCol := clYellow;
//          wrInserted: BCol := clGreen;
//          wrDeleted: BCol := clRed;
//     else
//          ; // wrNormal -- 이 줄은 생략해도 된다.
//     end;

end;

procedure TSawon_f.GrdFriendDrawMarker(Sender: TObject; ARow: Integer;
     var Text: string; var BCol, FCol: TColor; var FStyle: TFontStyles;
     var ImgIndex: Integer; var Value: Boolean);
begin
//     case grdFriend.RowState[ARow] of
//          wrUpdated: BCol := clYellow;
//          wrInserted: BCol := clGreen;
//          wrDeleted: BCol := clRed;
//     else
//          ; // wrNormal -- 이 줄은 생략해도 된다.
//     end;

end;

procedure TSawon_f.GrdFriendExit(Sender: TObject);
begin
//     with grdFriend do
//          Post;
//
end;

procedure TSawon_f.GrdHistoryExit(Sender: TObject);
begin
//     with grdHistory do
//          Post;
//
end;

procedure TSawon_f.Button1Click(Sender: TObject);
begin
     postdata1;
end;

procedure TSawon_f.Button4Click(Sender: TObject);
begin
     postdata2;
end;

procedure TSawon_f.GrdSawonRowChange(Sender: TObject);
var
     ARow, ACol: integer;
begin

     ARow := GrdSawon.Row;
     Acol := GrdSawon.col;

     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * From tblSawon');
          Sql.Add('Where SaBun = :SaBun');
          ParamByName('SaBun').AsString := GrdSawon.Cells[0, Arow];
          Open;
     end;
     Fieldset;
     ModFlag := True;
     BefRegCode := GrdSawon.Cells[0, Arow];

end;

procedure TSawon_f.GrdSawonMouseDown(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
var
     ARow, ACol: integer;

begin
     ARow := GrdSawon.Row;
     Acol := GrdSawon.col;
     if GrdSawon.rowcount > 0 then
     begin
          with DM_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Select * From tblSawon');
               Sql.Add('Where SaBun = :SaBun');
               ParamByName('SaBun').AsString := GrdSawon.Cells[0,
                    Arow];
               Open;
          end;
          //     If GrdSawon. then
          Fieldset;
          //     SelectData;
          ModFlag := True;
          BefRegCode := GrdSawon.Cells[0, Arow];
     end;
end;

procedure TSawon_f.SaCdEditExit(Sender: TObject);
begin
     //이미 등록된 사번인지체크
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * From tblSawon');
          Sql.Add('Where SaBun = :SaBun');
          ParamByName('SaBun').AsString := SaCdEdit.Text;
          Open;
     end;
     if DM_f.SqlWork.RecordCount > 0 then
     begin
          ShowMessage('[' + SaCdEdit.Text + ']' +
               '이 사번은 이미 사용중입니다.');
          SaCdEdit.Setfocus;
          Exit;
     end;
end;

procedure TSawon_f.SaHomeZipEditKeyPress(Sender: TObject; var Key: Char);
var
     FJuso: string;
begin
//     if Key = #13 then
//     begin
//          if Trim(SaHomeZipEdit.Text) <> '' then
//          begin
//               Fjuso := FindJuso(DisplayDash(SaHomeZipEdit.Text));
//               SaHomeZipEdit.Text := Trim(SubStr(Fjuso, 1, '^'));
//               SaHomeJusoEdit.Text := Trim(SubStr(Fjuso, 2, '^'));
//               SaHomeBunjiEdit.Text := Trim(SubStr(Fjuso, 3, '^'));
//               if SaTel1Edit.Text = '' then
//                    SaTel1Edit.Text := FindDDD(SaHomeJusoEdit.Text);
//               if Trim(SaHomeZipEdit.Text) <> '' then
//               begin
//                    SaHomeBunjiEdit.SetFocus;
//                    Key := #0;
//               end
//               else
//               begin
//                    SelectNext(sender as TWinControl, True, True);
//                    Key := #0;
//               end;
//          end
//          else
//          begin
//               SelectNext(sender as TWinControl, True, True);
//               Key := #0;
//          end;
//     end;
end;

procedure TSawon_f.SaJikZipEditKeyPress(Sender: TObject; var Key: Char);
var
     FJuso: string;
begin
//     if Key = #13 then
//     begin
//          if Trim(SaJikZipEdit.Text) <> '' then
//          begin
//               Fjuso := FindJuso(DisplayDash(SaJikZipEdit.Text));
//               SaJikZipEdit.Text := Trim(SubStr(Fjuso, 1, '^'));
//               SaJikJusoEdit.Text := Trim(SubStr(Fjuso, 2, '^'));
//               SaJikBunjiEdit.Text := Trim(SubStr(Fjuso, 3, '^'));
//               if SaTel1Edit.Text = '' then
//                    SaTel1Edit.Text := FindDDD(SaJikJusoEdit.Text);
//               if Trim(SaJikZipEdit.Text) <> '' then
//               begin
//                    SaJikBunjiEdit.SetFocus;
//                    Key := #0;
//               end
//               else
//               begin
//                    SelectNext(sender as TWinControl, True, True);
//                    Key := #0;
//               end;
//          end
//          else
//          begin
//               SelectNext(sender as TWinControl, True, True);
//               Key := #0;
//          end;
//     end;
end;

procedure TSawon_f.SaHomeJusoEditKeyPress(Sender: TObject; var Key: Char);
var
     FJuso: string;
begin

//     if Key = #13 then
//     begin
//          if SaHomeJusoEdit.Text <> '' then
//          begin
//               Fjuso := FindZip(SaHomejusoEdit.Text);
//               SaHomeZipEdit.Text := Trim(SubStr(Fjuso, 1, '^'));
//               SaHomeJusoEdit.Text := Trim(SubStr(Fjuso, 2, '^'));
//               SaHomeBunjiEdit.Text := Trim(SubStr(Fjuso, 3, '^'));
//               if SaTel1Edit.Text = '' then
//                    SaTel1Edit.Text := FindDDD(SaHomeJusoEdit.Text);
//               if SaHomeZipEdit.Text <> '' then
//               begin
//                    SaHomeBunjiEdit.SetFocus;
//                    Key := #0;
//               end
//               else
//                    Key := #0;
//
//          end
//          else
//          begin
//               SelectNext(sender as TWinControl, True, True);
//               Key := #0;
//          end;
//     end;
end;

procedure TSawon_f.SaJikJusoEditKeyPress(Sender: TObject; var Key: Char);
var
     FJuso: string;
begin

//     if Key = #13 then
//     begin
//          if SaJikJusoEdit.Text <> '' then
//          begin
//               Fjuso := FindZip(SaJikjusoEdit.Text);
//               SaJikZipEdit.Text := Trim(SubStr(Fjuso, 1, '^'));
//               SaJikJusoEdit.Text := Trim(SubStr(Fjuso, 2, '^'));
//               SaJikBunjiEdit.Text := Trim(SubStr(Fjuso, 3, '^'));
//               if SaTel1Edit.Text = '' then
//                    SaTel1Edit.Text := FindDDD(SaJikJusoEdit.Text);
//               if SaJikZipEdit.Text <> '' then
//               begin
//                    SaJikBunjiEdit.SetFocus;
//                    Key := #0;
//               end
//               else
//                    Key := #0;
//
//          end
//          else
//          begin
//               SelectNext(sender as TWinControl, True, True);
//               Key := #0;
//          end;
//     end;
end;

procedure TSawon_f.SaHomeZipEditChange(Sender: TObject);
begin
     if SaHomeZipEdit.Text = '' then
     begin
          SaHomeJusoEdit.text := '';
          SaHomeBunjiEdit.text := '';
     end;

end;

procedure TSawon_f.SaHomeJusoEditChange(Sender: TObject);
begin
     if SaHomeJusoEdit.text = '' then
     begin
          SaHomeZipEdit.Text := '';
          SaHomeBunjiEdit.text := '';
     end;

end;

procedure TSawon_f.SaJikJusoEditChange(Sender: TObject);
begin
     if SaJikJusoEdit.text = '' then
     begin
          SaJikZipEdit.Text := '';
          SaJikBunjiEdit.text := '';
     end;

end;

procedure TSawon_f.SaJikZipEditChange(Sender: TObject);
begin
     if SaJikZipEdit.Text = '' then
     begin
          SaJikJusoEdit.text := '';
          SaJikBunjiEdit.text := '';
     end;

end;

procedure TSawon_f.CanBtnClick(Sender: TObject);
begin
     FieldClear;
     SaNameEdit.SetFocus;
end;

procedure TSawon_f.SaNameEditKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

procedure TSawon_f.FormDestroy(Sender: TObject);
begin
     Sawon_f := nil;
end;

procedure TSawon_f.SaIdEditExit(Sender: TObject);
begin
     //이미 등록된 사번인지체크
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * From tblSawon');
          Sql.Add('Where SaId = :SaId');
          ParamByName('SaId').AsString := SaIdEdit.Text;
          Open;
     end;
     if DM_f.SqlWork.RecordCount > 0 then
     begin
          ShowMessage('[' + SaIdEdit.Text + ']' +
               '이 ID는 이미 사용중입니다.');
          SaIdEdit.Setfocus;
          Exit;
     end;

end;

procedure TSawon_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

end.

{
SABUN, SAID, SAPASS,SAPOWER,SANAME1,SANAME2,
SANAME3,SAJUMINNO,SAPICTURE,SAIBSAIL,SAJIKGUB,
SAJIKCHEK,SAHUJIKSAYU,SAHUJIKIL,SATOIJIKSAYU,
SATOIJIKIL,SAZIP1,SAJUSO1,SAZIP2,SAJUSO2,SATEL1,
SATEL2,SaGunmuji,SaBalyungil,SaHojuName,SaHojuGwangye,
SaHojuJikup,SaChuChunName,SaChuChunGwanGye,SaChuChunJikUp,
SaJeIbSaIl,SaHyulEkHyung,SaJongGyo,SaChuiMi,SaTeakGi

}

