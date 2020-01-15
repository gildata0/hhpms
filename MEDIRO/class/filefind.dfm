object filefind_f: Tfilefind_f
  Left = 270
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #54028#51068#44221#47196
  ClientHeight = 300
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DirectoryListBox1: TDirectoryListBox
    Left = 5
    Top = 30
    Width = 326
    Height = 111
    FileList = FileListBox1
    ImeName = #54620#44397#50612'('#54620#44544')'
    ItemHeight = 16
    TabOrder = 0
    OnChange = DirectoryListBox1Change
  end
  object DriveComboBox1: TDriveComboBox
    Left = 5
    Top = 5
    Width = 326
    Height = 19
    DirList = DirectoryListBox1
    ImeName = #54620#44397#50612'('#54620#44544')'
    TabOrder = 1
    OnChange = DriveComboBox1Change
  end
  object Edit1: TEdit
    Left = 5
    Top = 222
    Width = 326
    Height = 21
    ImeName = #54620#44397#50612'('#54620#44544')'
    TabOrder = 2
    Text = 'Edit1'
  end
  object BitBtn1: TBitBtn
    Left = 150
    Top = 250
    Width = 75
    Height = 43
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 255
    Top = 250
    Width = 75
    Height = 43
    TabOrder = 4
    Kind = bkCancel
  end
  object FileListBox1: TFileListBox
    Left = 5
    Top = 145
    Width = 326
    Height = 71
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    ItemHeight = 13
    TabOrder = 5
    OnChange = FileListBox1Change
  end
end
