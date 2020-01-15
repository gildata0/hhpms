unit uHiliteSLVitem;

interface
uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
       Dialogs, ExtCtrls, StdCtrls, inifiles, ComCtrls, commctrl;

function HiLiteSLVItem(hhwnd: hwnd; iIndex: integer): boolean;
function IsListViewControl(Handle: HWND): Boolean;
procedure ListViewSelectAll(Handle: HWND; var Handled: Boolean);
function HiLiteSLVItem2(hhwnd: hwnd; iIndex: integer): boolean; stdcall;

implementation

function HiLiteSLVItem(hhwnd: hwnd; iIndex: integer): boolean;
var
       lProcID: integer;
       hProc: integer;
       lxprocLVITEM: integer;
       LVITEM: LV_ITEM; //commctrl
       lItemPos: integer;
       BytesWritten: nativeUint;// DWORD;
begin
       GetWindowThreadProcessId(hhwnd, @lProcID); // Get the process ID in which the ListView is running
       if lProcID <> 0 then
       begin

          // makwe sure we have read write permissions in the process space
              hProc := OpenProcess(PROCESS_VM_OPERATION or PROCESS_VM_READ or PROCESS_VM_WRITE, False, lProcID);
              if hProc <> 0 then
              begin
              // Grab enough memory in the other procedure's space to hold our LV_ITEM
                     lxprocLVITEM := cardinal(VirtualAllocEx(hProc, nil, sizeof(LVITEM), MEM_RESERVE or MEM_COMMIT, PAGE_READWRITE));

             // Set up our local LV_ITEM to change the selected item
                     LVITEM.mask := LVIF_STATE;
                     LVITEM.state := cardinal(True);
                     LVITEM.stateMask := LVIS_SELECTED;

            // Copy the local LV_ITEM into the space we reserved in the foreign process
                     WriteProcessMemory(hProc, @lxprocLVITEM, @LVITEM, sizeof(LVITEM),  BytesWritten);

                  //   WriteProcessMemory(hProcess: THandle;
                    //const lpBaseAddress: Pointer; lpBuffer: Pointer;
                    // nSize: SIZE_T; var lpNumberOfBytesWritten: SIZE_T): BOOL; stdcall;

//               WriteProcessMemory      hProc, ByVal lxprocLVITEM, ByVal VarPtr(LVITEM), LenB(LVITEM), 0



            // Now send the message, but pass the address of the copy of our LV_ITEM that now exists in the foreign process instead of our local versiony
                     lItemPos := iIndex; // index of item to highlight
                     SendMessage(hhwnd, LVM_SETITEMSTATE, lItemPos, lxprocLVITEM);

               //PostMessage(hhwnd, LVM_SETITEMSTATE, lItemPos, lxprocLVITEM);
              // showmessage( inttostr(SendMessage(hhwnd, LVM_SETITEMSTATE, lItemPos, lxprocLVITEM)));
            //Clean up
                     VirtualFreeEx(hProc, @lxprocLVITEM, sizeOf(LVITEM), MEM_RELEASE);
                     CloseHandle(hProc);
              end;
       end;
end;

function IsListViewControl(Handle: HWND): Boolean;
var
       R: TRect;
begin
       R := Rect(-1, -1, -1, -1);
       Result := ListView_GetViewRect(Handle, R);
end;


procedure ListViewSelectAll(Handle: HWND; var Handled: Boolean);
var
       I: Integer;
       State: UINT;
begin
 //    if (GetWindowLong(Handle, GWL_STYLE) and LVS_SINGLESEL) = 0 then
 //    begin
       for I := 0 to ListView_GetItemCount(Handle) - 1 do
       begin
     // SendMessage(handle, WM_SETFOCUS, 0, 0);
              State := ListView_GetItemState(Handle, I, LVIS_SELECTED);
              ListView_SetItemState(Handle, I, State or LVIS_SELECTED, LVIS_SELECTED);
       end;
       Handled := True;
 //    end;
end;


function HiLiteSLVItem2(hhwnd: hwnd; iIndex: integer): boolean; stdcall;
var
       Buffer: PChar;
       Len: Integer;
       dwProcessId: DWORD;
       plvi: Pointer;
       lvi: LV_ITEM;
       hProcess: THandle;
       nIndex, count: Integer;
       numbytes : nativeUInt;
begin
  // Open a handle to the remote process's kernel object
  // Passing Handle of the listview to this function
       GetWindowThreadProcessId(hhwnd, @dwProcessId);
       hProcess := OpenProcess(PROCESS_VM_OPERATION or
              PROCESS_VM_READ or
              PROCESS_VM_WRITE, FALSE, dwProcessId);
       if hProcess = 0 then
              ShowMessage('Could not communicate with process');
  // Prepare a buffer to hold the ListView's data.
  // Note: Hardcoded maximum of 10240 chars for clipboard data.
  // Note: Clipboard only accepts data that is in a block
  //       allocated with GlobalAlloc using the GMEM_MOVEABLE and
  //       GMEM_DDESHARE flags.
  // Allocate memory in the remote process's address space
       plvi := VirtualAllocEx(hProcess, 0, 4096, MEM_RESERVE or MEM_COMMIT, PAGE_READWRITE);
  // Get each ListView item's text data
  // This class has a Count property that is populated with the
  // count of items in the listview.
       for nIndex := 0 to Count do
       begin
    // Initialize a local LV_ITEM structure
              lvi.mask := LVIF_TEXT;
              lvi.iItem := nIndex;
              lvi.iSubItem := 0;
    // NOTE: The text data immediately follows the LV_ITEM structure
    //       in the memory block allocated in the remote process.
              lvi.pszText := PChar(plvi);
              lvi.cchTextMax := 100;
    // Write the local LV_ITEM structure to the remote memory block
              WriteProcessMemory(hProcess, plvi, @lvi, sizeof(lvi), numbytes);
    // Tell the ListView control to fill the remote LV_ITEM structure
              ListView_GetItem(hhwnd, lvi);
    // Read the remote text string into the end of our clipboard buffer
              ReadProcessMemory(hProcess, PChar(plvi), @Buffer, 1024, numbytes);
    // Now that we have the text, let's add it to our stringlist.
      //   Items.Add(string(Buffer); // Items is a TStringList in the class.
       end;
  // Free the memory in the remote process's address space
       VirtualFreeEx(hProcess, plvi, 0, MEM_RELEASE);
  // Cleanup and put our results on the clipboard
       CloseHandle(hProcess);
end;


{
Public Function HiLiteSLVItem(ByVal hwnd As Long, ByVal iIndex As Long)
    Dim lProcID As Long
    Dim hProc As Long
    Dim lxprocLVITEM As Long
    Dim LVITEM As LV_ITEM
    Dim lItemPos As Long

    GetWindowThreadProcessId hwnd, lProcID ' Get the process ID in which the ListView is running
    If lProcID <> 0 Then
        hProc = OpenProcess(PROCESS_VM_OPERATION Or PROCESS_VM_READ Or PROCESS_VM_WRITE, False, lProcID) ' makwe sure we have read write permissions in the process space
        If hProc <> 0 Then
            lxprocLVITEM = VirtualAllocEx(hProc, 0, LenB(LVITEM), MEM_RESERVE Or MEM_COMMIT, PAGE_READWRITE) ' Grab enough memory in the other procedure's space to hold our LV_ITEM

            ' Set up our local LV_ITEM to change the selected item
            LVITEM.mask = LVIF_STATE
            LVITEM.state = True
            LVITEM.stateMask = LVIS_SELECTED

            ' Copy the local LV_ITEM into the space we reserved in the foreign process
            WriteProcessMemory hProc, ByVal lxprocLVITEM, ByVal VarPtr(LVITEM), LenB(LVITEM), 0

            ' Now send the message, but pass the address of the copy of our LV_ITEM that now exists in the foreign process instead of our local versiony
            lItemPos = iIndex& ' index of item to highlight
            SendMessage hwnd, LVM_SETITEMSTATE, lItemPos, ByVal lxprocLVITEM

            ' Clean up
            VirtualFreeEx hProc, ByVal lxprocLVITEM, LenB(LVITEM), MEM_RELEASE
            CloseHandle hProc
        End If
    End If
End Function
}



end.
 