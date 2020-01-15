unit BasicCode;
interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ExtCtrls, StdCtrls, AdvPanel, AdvGlowButton,
     Grids, BaseGrid, AdvGrid, AdvOfficeButtons, MoneyEdit, AdvEdit,
     AdvMoneyEdit, inifiles, AdvObj, AdvUtil;

type
     TBasicCode_f = class(TForm)
          pnlSub: TAdvPanel;
          lblSub: TLabel;
          lblKind: TLabel;
          Panel1: TAdvPanel;
          Label1: TLabel;
          Label2: TLabel;
          Label4: TLabel;
          edtCode: TEdit;
          edtName: TEdit;
          rgUse: TRadioGroup;
          edtRegDate: TEdit;
          cbLarge: TComboBox;
          lblLarge: TLabel;
          cbMiddle: TComboBox;
          lblMiddle: TLabel;
          Label3: TLabel;
          Label5: TLabel;
          grdbasic: TAdvStringGrid;
          cbView: TAdvOfficeCheckBox;
          lblYoyul: TLabel;
          edtYoyul: TAdvMoneyEdit;
          AdvPanel1: TAdvPanel;
          btnAdd: TAdvGlowButton;
          btnDel: TAdvGlowButton;
          btnPrint: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          btnSave: TAdvGlowButton;
          btnCancel: TAdvGlowButton;
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
          procedure cbLargeChange(Sender: TObject);
          procedure cbMiddleChange(Sender: TObject);
          procedure btnPrintClick(Sender: TObject);
          procedure edtNameKeyPress(Sender: TObject; var Key: Char);
          procedure FormCreate(Sender: TObject);
          procedure grdBasicRowChanging(Sender: TObject; OldRow, NewRow: Integer;
               var Allow: Boolean);
          procedure btnCancelClick(Sender: TObject);
    procedure grdbasicGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdbasicClickCell(Sender: TObject; ARow, ACol: Integer);
     private
          { Private declarations }
          procedure BasicCodeSave;
          procedure BasicCodeDELETE;
          procedure FieldClear;
          procedure GrdShow;
          procedure mainGridSet;
     public
          { Public declarations }
     end;

var
     BasicCode_f: TBasicCode_f;

implementation

uses DM, prtBasicCode, uFunctions, main;

{$R *.dfm}

const

{
     'IpgoType',
          'BaljuType',
          'UpcheType',
          'LocType',
          'BankType',
          'CardType',
          'Bunlarge',
          'BunMiddle
          'BunSmall'
}
     SelectMAX_IpgoType = 'SELECT MAX(ItCode) As MaxCode  FROM tblIbgoType';
     SelectMAX_BaljuType = 'SELECT MAX(BtCode) As MaxCode FROM tblBaljuType';
     SelectMAX_UpcheType = 'SELECT MAX(UtCode) As MaxCode FROM  tblUpcheType';
     SelectMAX_LocType = 'SELECT MAX(LcCode) As MaxCode FROM  tblLocate';
     SelectMAX_BankType = 'SELECT MAX(BkCode) As MaxCode FROM  tblBank';
     SelectMAX_CardType = 'SELECT MAX(CdCode) As MaxCode FROM  tblCard';
     SelectMAX_Bunlarge = 'SELECT MAX(BlCode) As MaxCode FROM  tblBunlarge';
     SelectMAX_BunMiddle = 'SELECT MAX(BmCode) As MaxCode FROM tblBunMiddle';
     SelectMAX_BunSmall = 'SELECT MAX(BsCode) As MaxCode FROM  tblBunSmall';
     SelectMAX_Busu = 'SELECT MAX(BusuCode) As MaxCode FROM  tblBusu';
     SelectMAX_SangGakFinish = 'SELECT MAX(SfCode) As MaxCode FROM  tblSangGakFinish';
     SelectMAX_SangGakMethod = 'SELECT MAX(SmCode) As MaxCode FROM  tblSangGakMethod';
     SelectMAX_Chubun = 'SELECT MAX(cbCode) As MaxCode FROM  tblChubun';
     SelectMAX_Gyejung = 'SELECT MAX(GjCode) As MaxCode FROM  tblGyejung';
     SelectMAX_Brand = 'SELECT MAX(BrCode) As MaxCode FROM  tblBrand';
     SelectMAX_Gh = 'SELECT MAX(GhCode) As MaxCode FROM  tblGwonhan';
     SelectMAX_Jw = 'SELECT MAX(JwCode) As MaxCode FROM  tblJikWi';



     Select_IpgoType2 = 'SELECT *  FROM tblIbgoType' + #10#13 +
          'Where ItUse <> ''1''';
     Select_BaljuType2 = 'SELECT * FROM tblBaljuType' + #10#13 +
          'Where BtUse <> ''1''';
     Select_UpcheType2 = 'SELECT * FROM  tblUpcheType' + #10#13 +
          'Where UtUse <> ''1''';
     Select_LocType2 = 'SELECT * FROM  tblLocate' + #10#13 +
          'Where LcUse <> ''1''';
     Select_BankType2 = 'SELECT * FROM  tblBank' + #10#13 +
          'Where BkUse <> ''1''';
     Select_CardType2 = 'SELECT * FROM  tblCard' + #10#13 +
          'Where CdUse <> ''1''';
     Select_Bunlarge2 = 'SELECT * FROM  tblBunlarge' + #10#13 +
          'Where BlUse <> ''1''';
     Select_BunMiddle2 = 'SELECT * FROM tblBunMiddle' + #10#13 +
          'Where BmUse <> ''1''';
     Select_BunSmall2 = 'SELECT * FROM  tblBunSmall' + #10#13 +
          'Where BsUse <> ''1''';
     Select_Busu2 = 'SELECT * FROM  tblBusu' + #10#13 +
          'Where busuUse <> ''1''';
     Select_SangGakFinish2 = 'SELECT * FROM  tblSangGakFinish' + #10#13 +
          'Where SfUse <> ''1''';
     Select_SangGakMethod2 = 'SELECT * FROM  tblSangGakMethod' + #10#13 +
          'Where smUse <> ''1''';
     Select_Chubun2 = 'SELECT * FROM  tblChubun' + #10#13 +
          'Where cbUse <> ''1''';
     Select_Gyejung2 = 'SELECT * FROM  tblGyejung' + #10#13 +
          'Where gjUse <> ''1''';
     Select_Brand2 = 'SELECT * FROM  tblBrand' + #10#13 +
          'Where brUse <> ''1''';
     Select_Upche2 = 'SELECT * FROM  tblUpche' + #10#13 +
          'Where ucUse <> ''1''';
     Select_Gh2 = 'SELECT * FROM  tblGwonHan' + #10#13 +
          'Where ghUse <> ''1''';
     Select_Jw2 = 'SELECT * FROM  tblJikWi' + #10#13 +
          'Where jwUse <> ''1''';


     Select_IpgoType = 'SELECT *  FROM tblIbgoType';
     Select_BaljuType = 'SELECT * FROM tblBaljuType';
     Select_UpcheType = 'SELECT * FROM  tblUpcheType';
     Select_LocType = 'SELECT * FROM  tblLocate';
     Select_BankType = 'SELECT * FROM  tblBank';
     Select_CardType = 'SELECT * FROM  tblCard';
     Select_Bunlarge = 'SELECT * FROM  tblBunlarge';
     Select_BunMiddle = 'SELECT * FROM tblBunMiddle';
     Select_BunSmall = 'SELECT * FROM  tblBunSmall';
     Select_Busu = 'SELECT * FROM  tblBusu';
     Select_SangGakFinish = 'SELECT * FROM  tblSangGakFinish';
     Select_SangGakMethod = 'SELECT * FROM  tblSangGakMethod';
     Select_Chubun = 'SELECT * FROM  tblChubun';
     Select_Gyejung = 'SELECT * FROM  tblGyejung';
     Select_Brand = 'SELECT * FROM  tblBrand';
     Select_Upche = 'SELECT * FROM  tblUpche';
     Select_Gh = 'SELECT * FROM  tblGwonhan';
     Select_Jw = 'SELECT * FROM  tblJikWi';



     SelectExist_IpgoType = 'Select *  FROM tblIbgoType' + #10#13 +
          'Where ItCode =:ItCode';
     SelectExist_BaljuType = 'Select * FROM tblBaljuType' + #10#13 +
          'Where BtCode  =:BtCode';
     SelectExist_UpcheType = 'Select * FROM  tblUpcheType' + #10#13 +
          'Where UtCode =:UtCode';
     SelectExist_LocType = 'Select * FROM  tblLocate' + #10#13 +
          'Where LcCode =:LcCode';
     SelectExist_BankType = 'Select * FROM  tblBank' + #10#13 +
          'Where BkCode =:BkCode';
     SelectExist_CardType = 'Select * FROM  tblCard' + #10#13 +
          'Where CdCode =:CdCode';
     SelectExist_Bunlarge = 'Select * FROM  tblBunlarge' + #10#13 +
          'Where BlCode =:BlCode';
     SelectExist_BunMiddle = 'Select * FROM tblBunMiddle' + #10#13 +
          'Where BmCode =:BmCode';
     SelectExist_BunSmall = 'Select * FROM  tblBunSmall' + #10#13 +
          'Where BsCode =:BsCode';
     SelectExist_Busu = 'SELECT * FROM  tblBusu' + #10#13 +
          'Where BusuCode =:BusuCode';
     SelectExist_SangGakFinish = 'SELECT * FROM  tblSangGakFinish' + #10#13 +
          'Where SfCode =:SfCode';
     SelectExist_SangGakMethod = 'SELECT * FROM  tblSangGakMethod' + #10#13 +
          'Where SmCode =:SmCode';
     SelectExist_Chubun = 'SELECT * FROM  tblChubun' + #10#13 +
          'Where CbCode =:CbCode';
     SelectExist_Gyejung = 'SELECT * FROM  tblGyejung' + #10#13 +
          'Where GjCode =:GjCode';
     SelectExist_Brand = 'SELECT * FROM  tblBrand' + #10#13 +
          'Where BrCode =:BrCode';
     SelectExist_Gh= 'SELECT * FROM  tblGwonHan' + #10#13 +
          'Where GhCode =:GhCode';
     SelectExist_Jw = 'SELECT * FROM  tblJikWi' + #10#13 +
          'Where JwCode =:JwCode';



     Delete_IpgoType = 'Delete   FROM tblIbgoType' + #10#13 +
          'Where ItCode =:ItCode';
     Delete_BaljuType = 'Delete  FROM tblBaljuType' + #10#13 +
          'Where BtCode  =:BtCode';
     Delete_UpcheType = 'Delete  FROM  tblUpcheType' + #10#13 +
          'Where UtCode =:UtCode';
     Delete_LocType = 'Delete  FROM  tblLocate' + #10#13 +
          'Where LcCode =:LcCode';
     Delete_BankType = 'Delete  FROM  tblBank' + #10#13 +
          'Where BkCode =:BkCode';
     Delete_CardType = 'Delete  FROM  tblCard' + #10#13 +
          'Where CdCode =:CdCode';
     Delete_Bunlarge = 'Delete  FROM  tblBunlarge' + #10#13 +
          'Where BlCode =:BlCode';
     Delete_BunMiddle = 'Delete  FROM tblBunMiddle' + #10#13 +
          'Where BmCode =:BmCode';
     Delete_BunSmall = 'Delete  FROM  tblBunSmall' + #10#13 +
          'Where BsCode =:BsCode';
     Delete_Busu = 'Delete  FROM  tblBusu' + #10#13 +
          'Where BusuCode =:BusuCode';
     Delete_SangGakFinish = 'Delete  FROM  tblSangGakFinish' + #10#13 +
          'Where SfCode =:SfCode';
     Delete_SangGakMethod = 'Delete  FROM  tblSangGakMethod' + #10#13 +
          'Where SmCode =:SmCode';
     Delete_Chubun = 'Delete  FROM  tblChubun' + #10#13 +
          'Where CbCode =:CbCode';
     Delete_Gyejung = 'Delete  FROM  tblGyejung' + #10#13 +
          'Where GjCode =:GjCode';
     Delete_Brand = 'Delete  FROM  tblBrand' + #10#13 +
          'Where BrCode =:BrCode';
     Delete_Gh = 'Delete  FROM  tblGwonHan' + #10#13 +
          'Where GhCode =:GhCode';
     Delete_Jw = 'Delete  FROM  tblJikWi' + #10#13 +
          'Where JwCode =:JwCode';


     Insert_IpgoType = 'Insert Into  tblIbgoType' + #10#13 +
          '(ItCode, ItName, ItRegday, Ituse) Values ' + #10#13 +
          '(:ItCode, :ItName, :ItRegday, :ItUse) ';

     Insert_BaljuType = 'Insert Into   tblBaljuType' + #10#13 +
          '(BtCode, BtName, BtRegday, BtUse) Values ' + #10#13 +
          '(:BtCode, :BtName, :BtRegday, :BtUse) ';

     Insert_UpcheType = 'Insert Into    tblUpcheType' + #10#13 +
          '(UtCode, UtName, UtRegday, UtUse) Values ' + #10#13 +
          '(:UtCode, :UtName, :UtRegday, :UtUse) ';

     Insert_LocType = 'Insert Into    tblLocate' + #10#13 +
          '(LcCode, LcName, LcRegday, LcUse) Values ' + #10#13 +
          '(:LcCode, :LcName, :LcRegday, :LcUse) ';

     Insert_BankType = 'Insert Into    tblBank' + #10#13 +
          '(BkCode, BkName, BkRegday, BkUse) Values ' + #10#13 +
          '(:BkCode, :BkName, :BkRegday, :BkUse) ';

     Insert_CardType = 'Insert Into    tblCard' + #10#13 +
          '(CdCode, CdName,CdRate, CdPrefix1, CdPrefix2, CdRegday, Cduse) Values ' + #10#13 +
          '(:CdCode, :CdName, :CdRate, :CdPrefix1, :CdPrefix2, :CdRegday, :CdUse) ';

     Insert_Bunlarge = 'Insert Into    tblBunlarge' + #10#13 +
          '(BlCode, BlName, BlRegday, BlUse) Values ' + #10#13 +
          '(:BlCode, :BlName, :BlRegday, :BlUse) ';

     Insert_BunMiddle = 'Insert Into   tblBunMiddle' + #10#13 +
          '(BlCode, BmCode, BmName, BmRegday, BmUse) Values ' + #10#13 +
          '(:BlCode, :BmCode, :BmName, :BmRegday, :BmUse) ';

     Insert_BunSmall = 'Insert Into    tblBunSmall' + #10#13 +
          '(BlCode, BmCode, BsCode, BsName, BsRegday, BsUse) Values ' + #10#13 +
          '(:BlCode, :BmCode, :BsCode, :BsName, :BsRegday, :BsUse) ';

     Insert_Busu = 'Insert  into  tblBusu' + #10#13 +
          '(BusuCode, BusuName, BusuRegday, BusuUse) Values ' + #10#13 +
          '(:BusuCode, :BusuName, :BusuRegday, :BusuUse) ';
     Insert_SangGakFinish = 'Insert  into  tblSangGakFinish' + #10#13 +
          '(sfCode, sfName, sfRegday, sfUse) Values ' + #10#13 +
          '(:sfCode, :sfName, :sfRegday, :sfUse) ';
     Insert_SangGakMethod = 'Insert  into  tblSangGakMethod' + #10#13 +
          '(smCode, smName, smRegday, smUse) Values ' + #10#13 +
          '(:smCode, :smName, :smRegday, :smUse) ';
     Insert_Chubun = 'Insert  into  tblChubun' + #10#13 +
          '(cbCode, cbName, cbRegday, cbUse) Values ' + #10#13 +
          '(:cbCode, :cbName, :cbRegday, :cbUse) ';
     Insert_Gyejung = 'Insert  into  tblGyejung' + #10#13 +
          '(gjCode, gjName, gjRegday, gjUse) Values ' + #10#13 +
          '(:gjCode, :gjName, :gjRegday, :gjuse) ';
     Insert_Brand = 'Insert Into   tblBrand' + #10#13 +
          '(UcCode, BrCode, BrName, BrRegday, BrUse) Values ' + #10#13 +
          '(:UcCode, :BrCode, :BrName, :BrRegday, :BrUse) ';
     Insert_Gh = 'Insert Into   tblGwonHan' + #10#13 +
          '(GhCode, GhName, GhRegday, GhUse) Values ' + #10#13 +
          '( :GhCode, :GhName, :GhRegday, :GhUse) ';
     Insert_Jw = 'Insert Into   tblJikWi' + #10#13 +
          '( JwCode, JwName, JwRegday, JwUse) Values ' + #10#13 +
          '(  :JwCode, :JwName, :JwRegday, :JwUse) ';





     Update_IpgoType = 'Update   tblIbgoType set ' + #10#13 +
          'ItName=:ItName, ItRegday=:ItRegday, Ituse=:ItUse ' + #10#13 +
          'Where ItCode =:ItCode';
     Update_BaljuType = 'Update    tblBaljuType set ' + #10#13 +
          'BtName=:BtName, BtRegday=:BtRegday, BtUse=:BtUse' + #10#13 +
          'Where BtCode  =:BtCode';
     Update_UpcheType = 'Update     tblUpcheType set ' + #10#13 +
          ' UtName=:UtName, UtRegday =:UtRegday, UtUse=:UtUse' + #10#13 +
          'Where UtCode =:UtCode';
     Update_LocType = 'Update     tblLocate set ' + #10#13 +
          'LcName=:LcName, LcRegday=:LcRegday, LcUse=:LcUse' + #10#13 +
          'Where LcCode =:LcCode';
     Update_BankType = 'Update     tblBank set ' + #10#13 +
          'BkName=:BkName, BkRegday=:BkRegday, BkUse=:BkUse' + #10#13 +
          'Where BkCode =:BkCode';
     Update_CardType = 'Update     tblCard set ' + #10#13 +
          ' CdName =:CdName,CdRate=:CdRate,CdPrefix1=:CdPrefix1,' + #10#13 +
          ' CdPrefix2 =:CdPrefix2, CdRegday=:CdRegday,  Cduse=:CdUse ' + #10#13 +
          'Where CdCode =:CdCode';
     Update_Bunlarge = 'Update     tblBunlarge set ' + #10#13 +
          'BlName=:BlName, BlRegday=:BlRegday, BlUse=:BlUse' + #10#13 +
          'Where BlCode =:BlCode';
     Update_BunMiddle = 'Update    tblBunMiddle set ' + #10#13 +
          ' BlCode=:BlCode, BmName=:BmName, BmRegday=:BmRegday, BmUse=:BmUse' + #10#13 +
          'Where BmCode =:BmCode';
     Update_BunSmall = 'Update     tblBunSmall set ' + #10#13 +
          'BlCode=:BlCode,BmCode =:BmCode,  BsName =:BsName, BsRegday=:BsRegday, BsUse=:BsUse' + #10#13 +
          'Where BsCode =:BsCode';

     Update_Busu = 'Update    tblBusu set' + #10#13 +
          'BusuName=:BusuName, BusuRegday=:BsusRegday, busuUse=:BusuUse' + #10#13 +
          'Where BusuCode =:BusuCode';
     Update_SangGakFinish = 'Update    tblSangGakFinish  set' + #10#13 +
          'SfName=:SfName, SfRegday=:SfRegday, SfUse=:SfUse' + #10#13 +
          'Where SfCode =:SfCode';
     Update_SangGakMethod = 'Update    tblSangGakMethod  set' + #10#13 +
          'SmName=:SmName, SmRegday=:SmRegday, SmUse=:SmUse' + #10#13 +
          'Where SmCode =:SmCode';
     Update_Chubun = 'Update    tblChubun set' + #10#13 +
          'CbName=:CbName, CbRegday=:CbRegday, CbUse=:CbUse' + #10#13 +
          'Where CbCode =:CbCode';
     Update_Gyejung = 'Update    tblGyejung set' + #10#13 +
          'GjName=:GjName, GjRegday=:GjRegday, GjUse=:GjUse' + #10#13 +
          'Where GjCode =:GjCode';
     Update_Brand = 'Update    tblBrand set ' + #10#13 +
          ' UcCode=:UcCode, BrName=:BrName, BrRegday=:BrRegday, BrUse=:BrUse' + #10#13 +
          'Where BrCode =:BrCode';

     Update_Gh = 'Update    tblGwonHan set' + #10#13 +
          'GhName=:GhName, GhRegday=:GhRegday, GhUse=:GhUse' + #10#13 +
          'Where GhCode =:GhCode';
     Update_Jw = 'Update    tblJikWi set' + #10#13 +
          'JwName=:JwName, JwRegday=:JwRegday, JwUse=:JwUse' + #10#13 +
          'Where JwCode =:JwCode';



     UpdateDelete_IpgoType = 'Update   tblIbgoType set ' + #10#13 +
          'ItRegday=:ItRegday, Ituse=:ItUse ' + #10#13 +
          'Where ItCode =:ItCode';
     UpdateDelete_BaljuType = 'Update    tblBaljuType set ' + #10#13 +
          'BtRegday=:BtRegday, BtUse=:BtUse' + #10#13 +
          'Where BtCode  =:BtCode';
     UpdateDelete_UpcheType = 'Update     tblUpcheType set ' + #10#13 +
          'UtRegday =:UtRegday, UtUse=:UtUse' + #10#13 +
          'Where UtCode =:UtCode';
     UpdateDelete_LocType = 'Update     tblLocate set ' + #10#13 +
          'LcRegday=:LcRegday, LcUse=:LcUse' + #10#13 +
          'Where LcCode =:LcCode';
     UpdateDelete_BankType = 'Update     tblBank set ' + #10#13 +
          'BkRegday=:BkRegday, BkUse=:BkUse' + #10#13 +
          'Where BkCode =:BkCode';
     UpdateDelete_CardType = 'Update     tblCard set ' + #10#13 +
          'CdRegday=:CdRegday,  Cduse=:CdUse ' + #10#13 +
          'Where CdCode =:CdCode';
     UpdateDelete_Bunlarge = 'Update     tblBunlarge set ' + #10#13 +
          'BlRegday=:BlRegday, BlUse=:BlUse' + #10#13 +
          'Where BlCode =:BlCode';
     UpdateDelete_BunMiddle = 'Update    tblBunMiddle set ' + #10#13 +
          'BmRegday=:BmRegday, BmUse=:BmUse' + #10#13 +
          'Where BmCode =:BmCode';
     UpdateDelete_BunSmall = 'Update     tblBunSmall set ' + #10#13 +
          'BsRegday=:BsRegday, BsUse=:BsUse' + #10#13 +
          'Where BsCode =:BsCode';

     UpdateDelete_Busu = 'Update    tblBusu set' + #10#13 +
          'BusuRegday= :BusuRegday, busuUse= :BusuUse' + #10#13 +
          'Where BusuCode = :BusuCode';
     UpdateDelete_SangGakFinish = 'Update    tblSangGakFinish  set' + #10#13 +
          'SfRegday=:SfRegday, SfUse=:SfUse' + #10#13 +
          'Where SfCode =:SfCode';
     UpdateDelete_SangGakMethod = 'Update    tblSangGakMethod  set' + #10#13 +
          'SmRegday=:SmRegday, SmUse=:SmUse' + #10#13 +
          'Where SmCode =:SmCode';
     UpdateDelete_Chubun = 'Update    tblChubun set' + #10#13 +
          'CbRegday=:CbRegday, CbUse=:CbUse' + #10#13 +
          'Where CbCode =:CbCode';
     UpdateDelete_Gyejung = 'Update    tblGyejung set' + #10#13 +
          'GjRegday=:GjRegday, GjUse=:GjUse' + #10#13 +
          'Where GjCode =:GjCode';
     UpdateDelete_Brand = 'Update    tblBrand set ' + #10#13 +
          'BrRegday=:BrRegday, BrUse=:BrUse' + #10#13 +
          'Where BrCode =:BrCode';
     UpdateDelete_Gh = 'Update    tblGwonHan set' + #10#13 +
          'GhRegday=:GhRegday, GhUse=:GhUse' + #10#13 +
          'Where GhCode =:GhCode';
     UpdateDelete_Jw = 'Update    tblJikWi set' + #10#13 +
          'JwRegday=:JwRegday, JwUse=:JwUse' + #10#13 +
          'Where JwCode =:JwCode';


procedure TBasicCode_f.FormShow(Sender: TObject);
begin
     Caption := '기초코드입력';
     fieldClear;
     GrdShow;
end;

procedure TBasicCode_f.FieldClear;
const
     Select_BunLarge2 = 'Select * from tblBunLarge' + #13#10 +
          'order by Blcode Asc';
     Select_BunMiddle2 = 'Select * from tblBunMiddle' + #13#10 +
          'where blCode=:blCode' + #13#10 +
          'order by Bmcode Asc';

begin
     edtName.Text := '';
     edtCode.Text := '';
     edtYoyul.Text := '0';
     edtRegDate.Text := '';
     rgUse.ItemIndex := 0;
     case StrCase(lblKind.Caption,
          ['IpgoType',
          'BaljuType',
               'UpcheType',
               'LocType',
               'BankType',
               'CardType',
               'Bunlarge',
               'BunMiddle',
               'BunSmall',
               'Busu',
               'Chubun',
               'SangGakFinish',
               'SangGakMethod',
               'GyeJung',
               'Brand',
               'GwonHan',
               'JikWi'
               ]) of
          0:
               pnlsub.Height := 36;
          1:
               pnlsub.Height := 36;
          2:
               pnlsub.Height := 36;
          3:
               pnlsub.Height := 36;
          4:
               pnlsub.Height := 36;
          5:
               pnlsub.Height := 36;
          6:
               pnlsub.Height := 36;
          7:   pnlsub.Height := 36;
//               begin
//                    pnlsub.Height := 65;
//
//                    cbLarge.items.clear;
//                    with dm_f.sqlwork do
//                    begin
//                         SQL.Text := Select_Bunlarge2;
//                         Open;
//
//                         while not eof do
//                         begin
//                              cbLarge.items.add(FieldByName('BlCode').AsString);
//                              next;
//                         end;
//                    end;
//               end;
          8: pnlsub.Height := 36;
//               begin
//                    pnlsub.Height := 96;
//                    cbLarge.items.clear;
//                    with dm_f.sqlwork do
//                    begin
//                         SQL.Text := Select_Bunlarge2;
//                         Open;
//
//                         while not eof do
//                         begin
//                              cbLarge.items.add(FieldByName('BlCode').AsString);
//                              next;
//                         end;
//                    end;
//                    cbMiddle.items.clear;
//                    with dm_f.sqlwork do
//                    begin
//                         SQL.Text := Select_BunMiddle2;
//                         paramByName('BlCode').AsString := cbLarge.text;
//                         Open;
//
//                         while not eof do
//                         begin
//                              cbMiddle.items.add(FieldByName('BmCode').AsString);
//                              next;
//                         end;
//                    end;
//
//               end;
          9:
               pnlsub.Height := 36;
          10:
               pnlsub.Height := 36;
          11:
               pnlsub.Height := 36;
          12:
               pnlsub.Height := 36;
          13:
               pnlsub.Height := 36;
          14:
               begin
                    pnlsub.Height := 65;

                   // cbLarge.items.clear;
                    with dm_f.sqlwork do
                    begin
                         SQL.Text := Select_Upche;
                         Open;

                         while not eof do
                         begin
                              cbLarge.items.add(FieldByName('ucCode').AsString);
                              next;
                         end;
                    end;
               end;
          15:
               pnlsub.Height := 36;
          16:
               pnlsub.Height := 36;


     end;
     cbLarge.text := '';
     cbmiddle.text := '';
     lblLarge.Caption := '';
     lblMiddle.Caption := '';
     cbLarge.itemIndex := -1;
     cbmiddle.itemIndex := -1;


end;

procedure TBasicCode_f.BasicCodeSave;
begin

{
     'IpgoType',
          'BaljuType',
          'UpcheType',
          'LocType',
          'BankType',
          'CardType',
          'Bunlarge',
          'BunMiddle
          'BunSmall'
}

     with dm_f.SqlWork do
     begin
          case StrCase(lblKind.Caption,
               ['IpgoType',
               'BaljuType',
                    'UpcheType',
                    'LocType',
                    'BankType',
                    'CardType',
                    'Bunlarge',
                    'BunMiddle',
                    'BunSmall',
                    'Busu',
                    'Chubun',
                    'SangGakFinish',
                    'SangGakMethod',
                    'GyeJung',
                    'Brand',
                    'GwonHan',
                    'JikWi'
                    ]) of


               0:
                    begin
                         SQL.Text := SELECTEXIST_IpgoType;
                         ParamByName('itCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_IpgoType
                         else
                              SQL.Text := INSERT_IpgoType;
                         ParamByName('ItCode').AsString := edtCode.text;
                         ParamByName('ItName').AsString := edtname.text;
                         ParamByName('ItRegday').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('ItUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;

               1:
                    begin
                         SQL.Text := SELECTEXIST_BaljuType;
                         ParamByName('BtCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_BaljuType
                         else
                              SQL.Text := INSERT_BaljuType;
                         ParamByName('BtCode').AsString := edtCode.text;
                         ParamByName('BtName').AsString := edtname.text;
                         ParamByName('BtRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BtUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               2:
                    begin
                         SQL.Text := SELECTEXIST_UpcheType;
                         ParamByName('UtCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then

                              SQL.Text := UPDATE_UpcheType
                         else
                              SQL.Text := INSERT_UpcheType;
                         ParamByName('UtCode').AsString := edtCode.text;
                         ParamByName('UtName').AsString := edtname.text;
                         ParamByName('UtRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('UtUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               3:
                    begin
                         SQL.Text := SELECTEXIST_LocType;
                         ParamByName('LcCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then

                              SQL.Text := UPDATE_LocType
                         else
                              SQL.Text := INSERT_LocType;
                         ParamByName('LcCode').AsString := edtCode.text;
                         ParamByName('LcName').AsString := edtname.text;
                         ParamByName('LcRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('LcUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               4:
                    begin
                         SQL.Text := SELECTEXIST_BankType;
                         ParamByName('BkCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_BankType
                         else
                              SQL.Text := INSERT_BankType;
                         ParamByName('BkCode').AsString := edtCode.text;
                         ParamByName('BkName').AsString := edtname.text;
                         ParamByName('BkRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BkUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               5:
                    begin
                         SQL.Text := SELECTEXIST_CardType;
                         ParamByName('cdCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then

                              SQL.Text := UPDATE_CardType
                         else

                              SQL.Text := INSERT_CardType;
                         ParamByName('CdCode').AsString := edtCode.text;
                         ParamByName('CdName').AsString := edtname.text;
                         ParamByName('CdRate').AsString := edtYoyul.text;
                         ParamByName('CdPrefix1').AsString := '';
                         ParamByName('Cdprefix2').AsString := '';
                         ParamByName('CdRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('CdUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;

                    end;
               6:
                    begin
                         SQL.Text := SELECTEXIST_Bunlarge;
                         ParamByName('BlCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then

                              SQL.Text := UPDATE_Bunlarge

                         else

                              SQL.Text := INSERT_Bunlarge;
                         ParamByName('BlCode').AsString := edtCode.text;
                         ParamByName('BlName').AsString := edtname.text;
                         ParamByName('BlRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BlUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;

                    end;
               7:
                    begin
                         if cbLarge.text = '' then
                         begin
                              showmessage('대분류코드를 선택하세요.');
                              cbLarge.SetFocus;
                              exit;
                         end
                         else
                         begin
                              SQL.Text := SELECTEXIST_BunMiddle;
                              ParamByName('BmCode').AsString := edtCode.text;
                              open;
                              if not isEmpty then

                                   SQL.Text := UPDATE_BunMiddle

                              else

                                   SQL.Text := INSERT_BunMiddle;
                              ParamByName('BlCode').AsString := cbLarge.Text;
                              ParamByName('BmCode').AsString := edtCode.text;
                              ParamByName('BmName').AsString := edtname.text;
                              ParamByName('BmRegDay').AsString :=
                                   FormatDateTime('YYYY-MM-DD', now);
                              ParamByName('BmUse').AsString :=
                                   intToStr(rgUse.ItemIndex);
                              ExecSql;
                         end;
                    end;
               8:
                    begin
                         if cbLarge.text = '' then
                         begin
                              showmessage('대분류코드를 선택하세요.');
                              cbLarge.SetFocus;
                              exit;
                         end
                         else if cbmiddle.text = '' then
                         begin
                              showmessage('중분류코드를 선택하세요.');
                              cbMiddle.SetFocus;
                              exit;
                         end

                         else
                         begin

                              SQL.Text := SELECTEXIST_BunSmall;
                              ParamByName('BsCode').AsString := edtCode.text;
                              open;
                              if not isEmpty then

                                   SQL.Text := UPDATE_BunSmall
                              else

                                   SQL.Text := INSERT_BunSmall;

                              ParamByName('BlCode').AsString := cbLarge.text;
                              ParamByName('BmCode').AsString := cbMiddle.text;
                              ParamByName('BsCode').AsString := edtCode.text;
                              ParamByName('BsName').AsString := edtname.text;
                              ParamByName('BsRegDay').AsString :=
                                   FormatDateTime('YYYY-MM-DD', now);
                              ParamByName('BsUse').AsString :=
                                   intToStr(rgUse.ItemIndex);
                              ExecSql;

                         end;
                    end;

               9:
                    begin
                         SQL.Text := SELECTEXIST_Busu;
                         ParamByName('BusuCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_Busu
                         else
                              SQL.Text := INSERT_Busu;
                         ParamByName('BuSuCode').AsString := edtCode.text;
                         ParamByName('BusuName').AsString := edtname.text;
                         ParamByName('BusuRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BusuUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               10:
                    begin
                         SQL.Text := SELECTEXIST_Chubun;
                         ParamByName('CbCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_Chubun
                         else
                              SQL.Text := INSERT_Chubun;
                         ParamByName('CbCode').AsString := edtCode.text;
                         ParamByName('CbName').AsString := edtname.text;
                         ParamByName('CbRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('CbUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               11:
                    begin
                         SQL.Text := SELECTEXIST_SangGakFinish;
                         ParamByName('SfCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_SanggakFinish
                         else
                              SQL.Text := INSERT_SanggakFinish;
                         ParamByName('SfCode').AsString := edtCode.text;
                         ParamByName('SfName').AsString := edtname.text;
                         ParamByName('SfRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('SfUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               12:
                    begin
                         SQL.Text := SELECTEXIST_SangGakMethod;
                         ParamByName('SmCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_SangGakMethod
                         else
                              SQL.Text := INSERT_SangGakMethod;
                         ParamByName('SmCode').AsString := edtCode.text;
                         ParamByName('SmName').AsString := edtname.text;
                         ParamByName('SmRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('SmUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               13:
                    begin
                         SQL.Text := SELECTEXIST_Gyejung;
                         ParamByName('GjCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_Gyejung
                         else
                              SQL.Text := INSERT_Gyejung;
                         ParamByName('GjCode').AsString := edtCode.text;
                         ParamByName('GjName').AsString := edtname.text;
                         ParamByName('GjRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('GjUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               14:
                    begin
                         if cbLarge.text = '' then
                         begin
                              showmessage('거래처코드를 선택하세요.');
                              cbLarge.SetFocus;
                              exit;
                         end
                         else
                         begin
                              SQL.Text := SELECTEXIST_Brand;
                              ParamByName('BrCode').AsString := edtCode.text;
                              open;
                              if not isEmpty then

                                   SQL.Text := UPDATE_Brand

                              else

                                   SQL.Text := INSERT_Brand;
                              ParamByName('UcCode').AsString := cbLarge.Text;
                              ParamByName('BrCode').AsString := edtCode.text;
                              ParamByName('BrName').AsString := edtname.text;
                              ParamByName('BrRegDay').AsString :=
                                   FormatDateTime('YYYY-MM-DD', now);
                              ParamByName('BrUse').AsString :=
                                   intToStr(rgUse.ItemIndex);
                              ExecSql;
                         end;
                    end;

               15:
                    begin
                         SQL.Text := SELECTEXIST_Gh;
                         ParamByName('GhCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_Gh
                         else
                              SQL.Text := INSERT_Gh;
                         ParamByName('GhCode').AsString := edtCode.text;
                         ParamByName('GhName').AsString := edtname.text;
                         ParamByName('GhRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('GhUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;

               16:
                    begin
                         SQL.Text := SELECTEXIST_Jw;
                         ParamByName('JwCode').AsString := edtCode.text;
                         open;
                         if not isEmpty then
                              SQL.Text := UPDATE_Jw
                         else
                              SQL.Text := INSERT_Jw;
                         ParamByName('JwCode').AsString := edtCode.text;
                         ParamByName('JwName').AsString := edtname.text;
                         ParamByName('JwRegDay').AsString :=
                              FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('JwUse').AsString :=
                              intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
          end;
     end;
end;

procedure TBasicCode_f.BasicCodeDelete; //지우면 절대 안되겠다.
//후에 데이터의 불일시가 일어날게 뻔하다.
begin
     with dm_f.SqlWork do
     begin
          case StrCase(lblKind.Caption,
               ['IpgoType',
               'BaljuType',
                    'UpcheType',
                    'LocType',
                    'BankType',
                    'CardType',
                    'Bunlarge',
                    'BunMiddle',
                    'BunSmall',
                    'Busu',
                    'Chubun',
                    'SangGakFinish',
                    'SangGakMethod',
                    'GyeJung',
                    'Brand' ,
                    'GwonHan' ,
                    'JikWi'
                    ]) of
               0:
                    begin
                         SQL.Text := UPDATEDelete_IpgoType;
                         ParamByName('ItCode').AsString := edtCode.text;
                         ParamByName('ItRegday').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('ItUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;

               1:
                    begin
                         SQL.Text := UpdateDelete_BaljuType;
                         ParamByName('BtCode').AsString := edtCode.text;
                         ParamByName('BtRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BtUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               2:
                    begin
                         SQL.Text := UpdateDelete_UpcheType;
                         ParamByName('UtCode').AsString := edtCode.text;
                         ParamByName('UtRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('UtUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               3:
                    begin
                         SQL.Text := UpdateDelete_LocType;
                         ParamByName('LcCode').AsString := edtCode.text;
                         ParamByName('LcRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('LcUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               4:
                    begin
                         SQL.Text := UpdateDelete_BankType;
                         ParamByName('BkCode').AsString := edtCode.text;
                         ParamByName('BkRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BkUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               5:
                    begin
                         SQL.Text := UpdateDelete_CardType;
                         ParamByName('CdCode').AsString := edtCode.text;
                         ParamByName('CdRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('CdUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               6:
                    begin
                         SQL.Text := UpdateDelete_Bunlarge;
                         ParamByName('BlCode').AsString := edtCode.text;
                         ParamByName('BlRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BlUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               7:
                    begin
                         SQL.Text := UpdateDelete_BunMiddle;
                         ParamByName('BmCode').AsString := edtCode.text;
                         ParamByName('BmRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BmUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               8:
                    begin
                         SQL.Text := UpdateDelete_BunSmall;
                         ParamByName('BsCode').AsString := edtCode.text;
                         ParamByName('BsRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BsUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               9:
                    begin
                         SQL.Text := UpdateDelete_Busu;
                         ParamByName('BusuCode').AsString := edtCode.text;
                         ParamByName('BusuRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BusuUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               10:
                    begin
                         SQL.Text := UpdateDelete_Chubun;
                         ParamByName('CbCode').AsString := edtCode.text;
                         ParamByName('CbRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('CbUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               11:
                    begin
                         SQL.Text := UpdateDelete_SangGakFinish;
                         ParamByName('SfCode').AsString := edtCode.text;
                         ParamByName('SfRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('SfUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               12:
                    begin
                         SQL.Text := UpdateDelete_SangGakMethod;
                         ParamByName('SmCode').AsString := edtCode.text;
                         ParamByName('SmRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('SmUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               13:
                    begin
                         SQL.Text := UpdateDelete_Gyejung;
                         ParamByName('GjCode').AsString := edtCode.text;
                         ParamByName('GjRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('GjUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               14:
                    begin
                         SQL.Text := UpdateDelete_Brand;
                         ParamByName('BrCode').AsString := edtCode.text;
                         ParamByName('BrRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('BrUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               15:
                    begin
                         SQL.Text := UpdateDelete_Gh;
                         ParamByName('GhCode').AsString := edtCode.text;
                         ParamByName('GhRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('GhUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
               16:
                    begin
                         SQL.Text := UpdateDelete_Jw;
                         ParamByName('JwCode').AsString := edtCode.text;
                         ParamByName('JwRegDay').AsString := FormatDateTime('YYYY-MM-DD', now);
                         ParamByName('JwUse').AsString := intToStr(rgUse.ItemIndex);
                         ExecSql;
                    end;
          end;
     end;
end;

procedure TBasicCode_f.mainGridSet;
var
     FormInit: Tinifile;
     path: string;
     iniFile: string;
begin
     path := ExtractFilePath(ParamStr(0));
     iniFile := path + 'pess.ini';
     FormInit := Tinifile.Create(inifile);

     with grdBasic do
     begin

          ColCount := 6;
       //   Rowcount := 2;
        //  FixedRows := 1;
        //  FixedCols := 1;
          rowcount := 2;
          FixedRows := 1;

          columnHeaders.LoadFromFile(path + 'gridheader\basic.txt');
          ColWidths[0] := 38; //연번
          ColWidths[1] := 38; //코드
          ColWidths[2] := 200; //명칭
          ColWidths[3] := 84; //등록일자
         // ColWidths[4] := 38; //사용
          ColWidths[4] := 0; //사용
          ColWidths[5] := 0; //요율

          RemoveRows(1, RowCount - 1);
     end;
end;

procedure TBasicCode_f.FormCreate(Sender: TObject);
begin
     mainGridSet;


end;


procedure TBasicCode_f.GrdShow;
begin

     grdBasic.RemoveRows(1, grdBasic.RowCount - 1);


     with Dm_f.SqlWork do
     begin
          case StrCase(lblKind.Caption,
               ['IpgoType',
               'BaljuType',
                    'UpcheType',
                    'LocType',
                    'BankType',
                    'CardType',
                    'Bunlarge',
                    'BunMiddle',
                    'BunSmall',
                    'Busu',
                    'Chubun',
                    'SangGakFinish',
                    'SangGakMethod',
                    'GyeJung',
                    'Brand',
                    'GwonHan',
                    'JikWi'
                    ]) of
               0:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_IpgoType
                         else
                              SQL.Text := SELECT_IpgoType2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin

                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.RowCount - 1] := FieldByName('ItCode').AsString;
                                   grdBasic.Cells[2, grdBasic.RowCount - 1] := FieldByName('ItName').AsString;
                                   grdBasic.Cells[3, grdBasic.RowCount - 1] := FieldByName('ItRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.RowCount - 1] := FieldByName('ItUse').AsString;
                                   Next;
                              end;

                    end;
               1:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_BaljuType
                         else
                              SQL.Text := SELECT_BaljuType2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.RowCount - 1] :=
                                        FieldByName('BtCode').AsString;
                                   grdBasic.Cells[2, grdBasic.RowCount - 1] :=
                                        FieldByName('BtName').AsString;
                                   grdBasic.Cells[3, grdBasic.RowCount - 1] :=
                                        FieldByName('BtRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.RowCount - 1] :=
                                        FieldByName('BtUse').AsString;
                                   Next;
                              end;

                    end;
               2:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_UpcheType
                         else
                              SQL.Text := SELECT_UpcheType2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.RowCount - 1] :=
                                        FieldByName('UtCode').AsString;
                                   grdBasic.Cells[2, grdBasic.RowCount - 1] :=
                                        FieldByName('UtName').AsString;
                                   grdBasic.Cells[3, grdBasic.RowCount - 1] :=
                                        FieldByName('UtRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.RowCount - 1] :=
                                        FieldByName('UtUse').AsString;
                                   Next;
                              end;
                    end;
               3:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_LocType
                         else
                              SQL.Text := SELECT_LocType2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.RowCount - 1] :=
                                        FieldByName('LcCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('LcName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('LcRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('LcUse').AsString;
                                   Next;
                              end;
                    end;
               4:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_BankType
                         else
                              SQL.Text := SELECT_BankType2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('BkCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('BkName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('BkRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('BkUse').AsString;
                                   Next;
                              end;
                    end;
               5:
                    begin

                         grdBasic.ColWidths[5] := 38; //요율

                         grdBasic.RemoveRows(1, grdBasic.rowCount - 1);

                         if cbView.Checked = true then
                              SQL.Text := SELECT_CardType
                         else
                              SQL.Text := SELECT_CardType2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('CdCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('CdName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('CdRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('CdUse').AsString;
                                   grdBasic.Cells[5, grdBasic.rowCount - 1] :=
                                        FieldByName('CdRate').AsString;
                                   Next;
                              end;
                    end;
               6:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_Bunlarge
                         else
                              SQL.Text := SELECT_Bunlarge2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('BlCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('BlName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('BlRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('BlUse').AsString;
                                   Next;
                              end;
                    end;
               7:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_BunMiddle
                         else
                              SQL.Text := SELECT_BunMiddle2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('BmCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('BmName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('BmRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('BmUse').AsString;
                                   grdBasic.Cells[5, grdBasic.rowCount - 1] :=
                                        FieldByName('BlCode').AsString;
                                   Next;
                              end;
                    end;
               8:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_BunSmall
                         else
                              SQL.Text := SELECT_BunSmall2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('BsCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('BsName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('BsRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('BsUse').AsString;
                                   grdBasic.Cells[5, grdBasic.rowCount - 1] :=
                                        FieldByName('BlCode').AsString;
                                   grdBasic.Cells[6, grdBasic.rowCount - 1] :=
                                        FieldByName('BmCode').AsString;
                                   Next;
                              end;
                    end;
               9:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_Busu
                         else
                              SQL.Text := SELECT_Busu2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('BusuCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('BusuName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('BusuRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('BusuUse').AsString;
                                   Next;
                              end;
                    end;
               10:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_Chubun
                         else
                              SQL.Text := SELECT_Chubun2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('CbCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('CbName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('CbRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('CbUse').AsString;
                                   Next;
                              end;
                    end;
               11:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_SanggakFinish
                         else
                              SQL.Text := SELECT_SanggakFinish2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('SfCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('SfName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('SfRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('SfUse').AsString;
                                   Next;
                              end;
                    end;
               12:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_SangGakMethod
                         else
                              SQL.Text := SELECT_SangGakMethod2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('SmCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('SmName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('SmRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('SmUse').AsString;
                                   Next;
                              end;
                    end;
               13:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_Gyejung
                         else
                              SQL.Text := SELECT_Gyejung2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('GjCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('GjName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('GjRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('GjUse').AsString;
                                   Next;
                              end;
                    end;
               14:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_Brand
                         else
                              SQL.Text := SELECT_Brand2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('BrCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('BrName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('BrRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('BrUse').AsString;
                                   grdBasic.Cells[5, grdBasic.rowCount - 1] :=
                                        FieldByName('UcCode').AsString;
                                   Next;
                              end;
                    end;
               15:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_Gh
                         else
                              SQL.Text := SELECT_Gh2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('GhCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('GhName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('GhRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('GhUse').AsString;
                                   Next;
                              end;
                    end;

               16:
                    begin
                         if cbView.Checked = true then
                              SQL.Text := SELECT_Jw
                         else
                              SQL.Text := SELECT_Jw2;
                         Open;
                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[1, grdBasic.rowCount - 1] :=
                                        FieldByName('JwCode').AsString;
                                   grdBasic.Cells[2, grdBasic.rowCount - 1] :=
                                        FieldByName('JwName').AsString;
                                   grdBasic.Cells[3, grdBasic.rowCount - 1] :=
                                        FieldByName('JwRegDay').AsString;
                                   grdBasic.Cells[4, grdBasic.rowCount - 1] :=
                                        FieldByName('JwUse').AsString;
                                   Next;
                              end;
                    end;


          end;
          if grdBasic.rowcount < 2 then
          begin
               grdBasic.rowcount := 2;
          end;
          grdBasic.FixedRows := 1;
          grdBasic.autonumbercol(0);
     end;

end;

procedure TBasicCode_f.btnClsClick(Sender: TObject);
begin
     Close;
end;

procedure TBasicCode_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TBasicCode_f.FormDestroy(Sender: TObject);
begin
     BasicCode_f := nil;
end;

procedure TBasicCode_f.btnSaveClick(Sender: TObject);
begin
     if edtCode.text = '' then
     begin
          Showmessage('코드를 입력하세요');
          edtCode.setFocus;
          exit;
     end;

     if edtName.text = '' then
     begin
          Showmessage('명칭을 입력하세요');
          edtName.setFocus;
          exit;
     end;
     BasicCodeSave;
     FieldClear;
     GrdShow;
     btnAdd.SetFocus;
end;

procedure TBasicCode_f.btnDelClick(Sender: TObject);
var
     ARow: integer;
begin
     ARow := GrdBasic.Row;
     BasicCodeDELETE;
     FieldClear;
     GrdShow;
end;

procedure TBasicCode_f.btnAddClick(Sender: TObject);
begin
     with dm_f.SqlWork do
     begin
          case StrCase(lblKind.Caption,
               ['IpgoType',
               'BaljuType',
                    'UpcheType',
                    'LocType',
                    'BankType',
                    'CardType',
                    'Bunlarge',
                    'BunMiddle',
                    'BunSmall',
                    'Busu',
                    'Chubun',
                    'SangGakFinish',
                    'SangGakMethod',
                    'GyeJung',
                    'Brand',
                    'GwonHan',
                    'JikWi'
                    ]) of



               0:
                    begin
                         SQL.Text := SELECTMAX_IpgoType;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               1:
                    begin
                         SQL.Text := SELECTMAX_BaljuType;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               2:
                    begin
                         SQL.Text := SELECTMAX_UpcheType;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               3:
                    begin
                         SQL.Text := SELECTMAX_LocType;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               4:
                    begin
                         SQL.Text := SELECTMAX_BankType;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               5:
                    begin
                         SQL.Text := SELECTMAX_CardType;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               6:
                    begin
                         SQL.Text := SELECTMAX_Bunlarge;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('000',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '001';
                    end;
               7:
                    begin
                         SQL.Text := SELECTMAX_BunMiddle;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('000',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '001';
                    end;
               8:
                    begin
                         SQL.Text := SELECTMAX_BunSmall;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('000',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '001';
                    end;

               9:
                    begin
                         SQL.Text := SELECTMAX_Busu;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;

               10:
                    begin
                         SQL.Text := SELECTMAX_Chubun;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               11:
                    begin
                         SQL.Text := SELECTMAX_SangGakFinish;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               12:
                    begin
                         SQL.Text := SELECTMAX_SangGakMethod;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               13:
                    begin
                         SQL.Text := SELECTMAX_GyeJung;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               14:
                    begin
                         SQL.Text := SELECTMAX_Brand;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               15:
                    begin
                         SQL.Text := SELECTMAX_Gh;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;
               16:
                    begin
                         SQL.Text := SELECTMAX_Jw;
                         Open;
                         if fieldByName('MaxCode').AsString <> '' then
                              edtCode.Text :=
                                   formatFloat('00',
                                   StrToInt(fieldByName('MaxCode').AsString) + 1)
                         else
                              edtCode.Text := '01';
                    end;

          end;
     end;
     edtName.Text := '';
     edtName.SetFocus;
end;

procedure TBasicCode_f.cbLargeChange(Sender: TObject);
const
     Select_BunMiddle2 = 'Select * from tblBunMiddle' + #13#10 +
          'where BlCode=:BlCode';
     Select_BunLarge2 = 'Select * from tblBunLarge' + #13#10 +
          'where  Blcode =:BlCode';
     Select_Upche2 = 'Select * from tblUpche' + #13#10 +
          'where  Uccode =:UcCode';
     Select_Brand2 = 'Select * from tblBrand' + #13#10 +
          'where  Uccode =:UcCode';

begin

     case StrCase(lblKind.Caption,
          ['IpgoType',
          'BaljuType',
               'UpcheType',
               'LocType',
               'BankType',
               'CardType',
               'Bunlarge',
               'BunMiddle',
               'BunSmall',
               'Busu',
               'Chubun',
               'SangGakFinish',
               'SangGakMethod',
               'GyeJung',
               'Brand',
               'Gwonhan',
               'JikWi'
               ]) of
          7:
               begin
                    with dm_f.sqlwork do
                    begin
                         SQL.Text := Select_BunLarge2;
                         paramByName('BlCode').AsString := CbLarge.text;
                         Open;
                         lblLarge.Caption := FieldByname('BlName').AsString;
                    end;

                    cbMiddle.items.clear;
                    with dm_f.sqlwork do
                    begin
                         SQL.Text := Select_BunMiddle2;
                         paramByName('BlCode').AsString := cbLarge.text;
                         Open;
                         while not eof do
                         begin
                              cbMiddle.items.add(FieldByName('BmCode').AsString);
                              next;
                         end;
                    end;
               end;
          8:
               begin
                    with dm_f.sqlwork do
                    begin
                         SQL.Text := Select_BunLarge2;
                         paramByName('BlCode').AsString := CbLarge.text;
                         Open;
                         lblLarge.Caption := FieldByname('BlName').AsString;
                    end;

                    cbMiddle.items.clear;
                    with dm_f.sqlwork do
                    begin
                         SQL.Text := Select_BunMiddle2;
                         paramByName('BlCode').AsString := cbLarge.text;
                         Open;
                         while not eof do
                         begin
                              cbMiddle.items.add(FieldByName('BmCode').AsString);
                              next;
                         end;
                    end;
               end;
          14:
               begin
                    with dm_f.sqlwork do
                    begin
                         SQL.Text := Select_Upche2;
                         paramByName('ucCode').AsString := CbLarge.text;
                         Open;
                         lblLarge.Caption := FieldByname('UcSangho').AsString;
                    end;

                    with dm_f.sqlwork do
                    begin
                         close;
                         sql.clear;
                         SQL.Text := SELECT_Brand2;
                         paramByName('ucCode').AsString := cbLarge.text;
                         Open;

                         if not IsEmpty then
                              while not EOF do
                              begin
                                   grdBasic.AddRow;
                                   grdBasic.Cells[0, grdBasic.RowCount - 1] := FieldByName('BrCode').AsString;
                                   grdBasic.Cells[1, grdBasic.RowCount - 1] := FieldByName('BrName').AsString;
                                   grdBasic.Cells[2, grdBasic.RowCount - 1] := FieldByName('BrRegDay').AsString;
                                   grdBasic.Cells[3, grdBasic.RowCount - 1] := FieldByName('BrUse').AsString;
                                   grdBasic.Cells[4, grdBasic.RowCount - 1] := FieldByName('UcCode').AsString;
                                   Next;
                              end;
                    end;

               end;

     end;

end;



procedure TBasicCode_f.cbMiddleChange(Sender: TObject);
const
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'where  Bmcode =:BmCode and Blcode =:BlCode';
     Select_BunLarge = 'Select * from tblBunLarge' + #13#10 +
          'where  Blcode =:BlCode';
begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_BunMiddle;
          paramByName('BmCode').AsString := CbMiddle.text;
          paramByName('BlCode').AsString := CbLarge.text;
          Open;
          lblMiddle.Caption := FieldByname('BmName').AsString;
     end;

end;

procedure TBasicCode_f.btnPrintClick(Sender: TObject);
var
     prtBasicCode_f: TprtBasicCode_f;
begin
     prtBasicCode_f := TprtBasicCode_f.CreateFrm(Self, grdBasic);
     try
          with prtBasicCode_f, QuickRep1 do
          begin
               PreviewModal;
          end;
     finally
          prtBasicCode_f.Free;
     end;

end;

procedure TBasicCode_f.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
     if KEY = #13 then
     begin
          btnSave.setfocus;
     end;
end;


procedure TBasicCode_f.grdBasicRowChanging(Sender: TObject; OldRow,
     NewRow: Integer; var Allow: Boolean);
const
     Select_BunMiddle2 = 'Select * from tblBunMiddle' + #13#10 +
          'where  Bmcode =:BmCode and Blcode =:BlCode';
     Select_BunLarge2 = 'Select * from tblBunLarge' + #13#10 +
          'where  Blcode =:BlCode';

begin
     if (grdBasic.cells[1, NewRow] <> '') and (newRow <> 0) then
     begin
          edtCode.text := GrdBasic.Cells[1, newRow];
          edtName.text := GrdBasic.Cells[2, newRow];
          edtRegDate.Text := GrdBasic.Cells[3, newRow];
          rgUse.ItemIndex := StrToInt(GrdBasic.Cells[4, newRow]);
          cblarge.text := GrdBasic.Cells[5, newRow];
          cbMiddle.text := GrdBasic.Cells[6, newRow];
          edtYoyul.text := GrdBasic.Cells[5, newRow];


          with dm_f.sqlwork do
          begin
               SQL.Text := Select_BunLarge2;
               paramByName('BlCode').AsString := CbLarge.text;
               Open;
               lblLarge.Caption := FieldByname('BlName').AsString;
          end;
          with dm_f.sqlwork do
          begin
               SQL.Text := Select_BunMiddle2;
               paramByName('BmCode').AsString := CbMiddle.text;
               Open;
               lblMiddle.Caption := FieldByname('BmName').AsString;
          end;

     end;


end;

procedure TBasicCode_f.btnCancelClick(Sender: TObject);
begin
     fieldClear;
     GrdShow;

end;

procedure TBasicCode_f.grdbasicGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if (ARow >= 0) then HAlign := taCenter;

end;

procedure TBasicCode_f.grdbasicClickCell(Sender: TObject; ARow,
  ACol: Integer);
const
     Select_BunMiddle2 = 'Select * from tblBunMiddle' + #13#10 +
          'where  Bmcode =:BmCode and Blcode =:BlCode';
     Select_BunLarge2 = 'Select * from tblBunLarge' + #13#10 +
          'where  Blcode =:BlCode';

begin
     if (grdBasic.cells[1, aRow] <> '') and (aRow <> 0) then
     begin
          edtCode.text := GrdBasic.Cells[1, aRow];
          edtName.text := GrdBasic.Cells[2, aRow];
          edtRegDate.Text := GrdBasic.Cells[3, aRow];
          rgUse.ItemIndex := StrToInt(GrdBasic.Cells[4, aRow]);
          cblarge.text := GrdBasic.Cells[5, aRow];
          cbMiddle.text := GrdBasic.Cells[6, aRow];
          edtYoyul.text := GrdBasic.Cells[5, aRow];


          with dm_f.sqlwork do
          begin
               SQL.Text := Select_BunLarge2;
               paramByName('BlCode').AsString := CbLarge.text;
               Open;
               lblLarge.Caption := FieldByname('BlName').AsString;
          end;
          with dm_f.sqlwork do
          begin
               SQL.Text := Select_BunMiddle2;
               paramByName('BmCode').AsString := CbMiddle.text;
               Open;
               lblMiddle.Caption := FieldByname('BmName').AsString;
          end;

     end;


end;

end.

