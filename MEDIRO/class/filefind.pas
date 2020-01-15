unit filefind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, Buttons;

type
  Tfilefind_f = class(TForm)
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FileListBox1: TFileListBox;
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  filefind_f: Tfilefind_f;

implementation

{$R *.dfm}

procedure Tfilefind_f.DirectoryListBox1Change(Sender: TObject);
begin
     FileListBox1.FileName := DirectoryListBox1.Directory ;
     Edit1.text := DirectoryListBox1.Directory;

end;

procedure Tfilefind_f.DriveComboBox1Change(Sender: TObject);
begin
     DirectoryListBox1.Drive := DriveCombobox1.Drive;

end;

procedure Tfilefind_f.FileListBox1Change(Sender: TObject);
begin
     Edit1.text := FileListBox1.FileName;

end;

procedure Tfilefind_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Tfilefind_f.FormDestroy(Sender: TObject);
begin
       filefind_f := nil;
end;

end.
