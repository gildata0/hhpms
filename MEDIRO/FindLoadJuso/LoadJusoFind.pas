unit LoadJusoFind;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.Win.msxmldom, Xml.XMLDoc, Vcl.ExtCtrls, HTTPApp, ShellAPI, System.NetEncoding,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, AdvCGrid, Vcl.ClipBrd,
  Vcl.Imaging.pngimage, Vcl.Samples.Spin, AdvEdit, AdvUtil;

type
  TloadJusoFind_f = class(TForm)
    idHttp: TIdHTTP;
    pnlTop: TPanel;
    btnFind: TButton;
    XMLDocument: TXMLDocument;
    gdResult: TAdvColumnGrid;
    rdgAddr: TRadioGroup;
    pnlBottom: TPanel;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    edtAddr: TAdvEdit;
    Label2: TLabel;
    Label3: TLabel;
    lblCurrentPage: TLabel;
    lblTotalCount: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    lblTotPage: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure edtAddrKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure gdResultDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure gdResultKeyPress(Sender: TObject; var Key: Char);
  private
     nPage : integer;
    { Private declarations }
  public
    { Public declarations }

    procedure SearchAdd(aJuso : string; CurPage, CountPerPage: integer);
  end;

var
  loadJusoFind_f: TloadJusoFind_f;

implementation

{$R *.dfm}


procedure TloadJusoFind_f.SearchAdd( aJuso : string; CurPage: integer; CountPerPage: integer);
var
    Code, sUrl, SearchWord, FindKeyWord: string ;
    Data, DResult: TStringStream;
    OuterRoot, EntryNode: IXmlNode;
    i, j, nTotCnt: Integer;
begin
    if Trim(aJuso).IsEmpty then
    begin
        ShowMessage('검색할 구주소를 입력하십시오..');
       // edtAddr.SetFocus;
        Exit;
    end;

    if rdgAddr.ItemIndex = 0 then
        FindKeyWord := 'roadAddr'
    else
        FindKeyWord := 'roadAddrPart1';

    DResult := TStringStream.Create('');

    try
        Screen.Cursor := crHourGlass;
        idHttp.Request.ContentType := 'application/json';

        Code :=  TNetEncoding.URL.Encode('U01TX0FVVEgyMDE4MDgzMDE2MTAwOTEwODEwNjg= ');

        SearchWord := TNetEncoding.URL.Encode(aJuso);

        sUrl:= 'http://www.juso.go.kr/addrlink/addrLinkApi.do';
//            + '?confmKey=' + Code + '&keyword=' + SearchWord;


         sUrl := sUrl + '?currentPage=' +  inttostr(CurPage)
            + '&countPerPage=' + inttostr(CountPerPage)
            + '&keyword=' + searchWord + '&confmKey=' + Code;
        IdHttp.Get(sUrl , DResult);


        XMLDocument.LoadFromStream(DResult);
        XMLDocument.Active:=True;

        OuterRoot := XMLDocument.DocumentElement;
        if OuterRoot.ChildNodes.Count <= 1 then
        begin
            gdResult.ClearRows(gdResult.FixedRows, 1);
            gdResult.RowCount := 2;

            //btnClipBoardCopy.Enabled := False;
            ShowMessage('해당하는 도로명 주소를 찾을 수가 없습니다...');
            //edtAddr.SetFocus;
            Exit;
        end;



        for i:=0 to OuterRoot.ChildNodes.Count-1 do
        begin
          if OuterRoot.ChildNodes[i].NodeName = 'common' then
          begin
            EntryNode := OuterRoot.ChildNodes[i];
            for j:=0 to EntryNode.ChildNodes.Count-1 do
              if EntryNode.ChildNodes[j].NodeName = 'totalCount' then
              begin
                nTotCnt := strtoint(EntryNode.ChildNodes[j].Text);
                Break;
              end;

            for j:=0 to EntryNode.ChildNodes.Count-1 do
              if EntryNode.ChildNodes[j].NodeName = 'currentPage' then
              begin
                CurPage := strtoint(EntryNode.ChildNodes[j].Text);
                Break;
              end;

            for j:=0 to EntryNode.ChildNodes.Count-1 do
              if EntryNode.ChildNodes[j].NodeName = 'countPerPage' then
              begin
                CountPerPage := strtoint(EntryNode.ChildNodes[j].Text);
                Break;
              end;

          end;
        end;


        nPage :=  CurPage;

//        lblTotalCount.Caption := 'Total Count = ' + inttostr(nTotCnt);
//        lblCurrentPage.Caption := 'Current Page = ' + inttostr(CurPage);

        lblTotalCount.Caption  :=  inttostr(nTotCnt);
        lblCurrentPage.Caption :=   inttostr(CurPage);
        lblTotPage.Caption     :=   inttostr(nTotCnt div spinedit1.Value + 1);

        with gdResult do
        begin
            RowCount := OuterRoot.ChildNodes.Count;
            ClearRows(FixedRows, RowCount - FixedRows);
            AutoNumberCol(0);
        end;

        for i := 0 to OuterRoot.ChildNodes.Count -1 do
        begin
            if OuterRoot.ChildNodes[i].NodeName = 'juso' then
            begin
                EntryNode := OuterRoot.ChildNodes[i];

                if EntryNode.ChildNodes.Count > 0 then
                begin
                    for j := 0 to EntryNode.ChildNodes.Count -1 do
                    begin
                        if EntryNode.ChildNodes[j].NodeName = 'zipNo' then
                            gdResult.Cells[1, i] := EntryNode.ChildNodes[j].Text
                        else if EntryNode.ChildNodes[j].NodeName = FindKeyWord then
                            gdResult.Cells[2, i] := EntryNode.ChildNodes[j].Text
                        else if EntryNode.ChildNodes[j].NodeName = 'jibunAddr' then
                            gdResult.Cells[3, i] := EntryNode.ChildNodes[j].Text;
                    end;
                end
            end;

            // gdResult.SetFocus;
            //btnClipBoardCopy.Enabled := True;
        end;
    finally
        DResult.Free;
        Screen.Cursor := crDefault;
    end;
end;

procedure TloadJusoFind_f.btnFindClick(Sender: TObject);
begin

    SearchAdd(edtAddr.Text, 1, spinEdit1.Value);
end;

procedure TloadJusoFind_f.Button1Click(Sender: TObject);
begin
      nPage := nPage + 1;
      SearchAdd(edtAddr.Text, nPage, spinEdit1.Value);

end;

procedure TloadJusoFind_f.Button2Click(Sender: TObject);
begin
      nPage := nPage - 1;
      SearchAdd(edtAddr.Text, nPage, spinEdit1.Value);

end;

procedure TloadJusoFind_f.edtAddrKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        SearchAdd(edtAddr.Text, 1, spinEdit1.Value);
        Key := #0;
    end;
end;

procedure TloadJusoFind_f.gdResultDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
   if aRow > 0  then
       ModalResult := mrOk;

end;

procedure TloadJusoFind_f.gdResultKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    begin
       if gdResult.RowCount > 1  then
        ModalResult := mrOk;
        Key := #0;
    end;
end;

procedure TloadJusoFind_f.Image1MouseEnter(Sender: TObject);
begin
    Screen.Cursor := crHandPoint;
end;

procedure TloadJusoFind_f.Image1MouseLeave(Sender: TObject);
begin
    Screen.Cursor := crDefault;
end;

end.
