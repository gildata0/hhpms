unit uStringToVK;


interface

uses
  SysUtils;

function VKStringToWord(const aVKstring: string): word;

implementation

function VKStringToWord(const aVKstring: string): word;
begin
  if aVKstring='' then
    Exit;
 // case UpperCase(aVKstring) of

 if  UpperCase(aVKstring) =     'VK_0'                   then     Result:= $30 else
 if  UpperCase(aVKstring) =     'VK_1'                   then     Result:= $31   else
 if  UpperCase(aVKstring) =     'VK_2'                   then     Result:= $32   else
 if  UpperCase(aVKstring) =     'VK_3'                   then     Result:= $33   else
 if  UpperCase(aVKstring) =     'VK_4'                   then     Result:= $34   else
 if  UpperCase(aVKstring) =     'VK_5'                   then     Result:= $35   else
 if  UpperCase(aVKstring) =     'VK_6'                   then     Result:= $36   else
 if  UpperCase(aVKstring) =     'VK_7'                   then     Result:= $37   else
 if  UpperCase(aVKstring) =     'VK_8'                   then     Result:= $38   else
 if  UpperCase(aVKstring) =     'VK_9'                   then     Result:= $39   else
 if  UpperCase(aVKstring) =     'VK_A'                   then     Result:= $41   else
 if  UpperCase(aVKstring) =     'VK_ACCEPT'              then     Result:= 30   else
 if  UpperCase(aVKstring) =     'VK_ADD'                 then     Result:= 107   else
 if  UpperCase(aVKstring) =     'VK_APPS'                then     Result:= $5D   else
 if  UpperCase(aVKstring) =     'VK_ATTN'                then     Result:= $F6   else
 if  UpperCase(aVKstring) =     'VK_B'                   then     Result:= $42   else
 if  UpperCase(aVKstring) =     'VK_BACK'                then     Result:= 8   else
 if  UpperCase(aVKstring) =     'VK_BROWSER_BACK'        then     Result:= $A6   else
 if  UpperCase(aVKstring) =     'VK_BROWSER_FAVORITES'   then     Result:= $AB   else
 if  UpperCase(aVKstring) =     'VK_BROWSER_FORWARD'     then     Result:= $A7   else
 if  UpperCase(aVKstring) =     'VK_BROWSER_HOME'        then     Result:= $AC   else
 if  UpperCase(aVKstring) =     'VK_BROWSER_REFRESH'     then     Result:= $A8   else
 if  UpperCase(aVKstring) =     'VK_BROWSER_SEARCH'      then     Result:= $AA   else
 if  UpperCase(aVKstring) =     'VK_BROWSER_STOP'        then     Result:= $A9   else
 if  UpperCase(aVKstring) =     'VK_C'                   then     Result:= $43   else
 if  UpperCase(aVKstring) =     'VK_CANCEL'              then     Result:= 3   else
 if  UpperCase(aVKstring) =     'VK_CAPITAL'             then     Result:= 20   else
 if  UpperCase(aVKstring) =     'VK_CLEAR'               then     Result:= 12   else
 if  UpperCase(aVKstring) =     'VK_CONTROL'             then     Result:= 17   else
 if  UpperCase(aVKstring) =     'VK_CONVERT'             then     Result:= 28   else
 if  UpperCase(aVKstring) =     'VK_CRSEL'               then     Result:= $F7   else
 if  UpperCase(aVKstring) =     'VK_D'                   then     Result:= $44   else
 if  UpperCase(aVKstring) =     'VK_DECIMAL'             then     Result:= 110   else
 if  UpperCase(aVKstring) =     'VK_DELETE'              then     Result:= 46   else
 if  UpperCase(aVKstring) =     'VK_DIVIDE'              then     Result:= 111   else
 if  UpperCase(aVKstring) =     'VK_DOWN'                then     Result:= 40   else
 if  UpperCase(aVKstring) =     'VK_E'                   then     Result:= $45   else
 if  UpperCase(aVKstring) =     'VK_END'                 then     Result:= 35   else
 if  UpperCase(aVKstring) =     'VK_EREOF'               then     Result:= $F9   else
 if  UpperCase(aVKstring) =     'VK_ESCAPE'              then     Result:= 27   else
 if  UpperCase(aVKstring) =     'VK_EXECUTE'             then     Result:= 43   else
 if  UpperCase(aVKstring) =     'VK_EXSEL'               then     Result:= $F8   else
 if  UpperCase(aVKstring) =     'VK_F'                   then     Result:= $46   else
 if  UpperCase(aVKstring) =     'VK_F1'                  then     Result:= 112   else
 if  UpperCase(aVKstring) =     'VK_F10'                 then     Result:= 121   else
 if  UpperCase(aVKstring) =     'VK_F11'                 then     Result:= 122   else
 if  UpperCase(aVKstring) =     'VK_F12'                 then     Result:= 123   else
 if  UpperCase(aVKstring) =     'VK_F13'                 then     Result:= 124   else
 if  UpperCase(aVKstring) =     'VK_F14'                 then     Result:= 125   else
 if  UpperCase(aVKstring) =     'VK_F15'                 then     Result:= 126   else
 if  UpperCase(aVKstring) =     'VK_F16'                 then     Result:= 127   else
 if  UpperCase(aVKstring) =     'VK_F17'                 then     Result:= 128   else
 if  UpperCase(aVKstring) =     'VK_F18'                 then     Result:= 129   else
 if  UpperCase(aVKstring) =     'VK_F19'                 then     Result:= 130   else
 if  UpperCase(aVKstring) =     'VK_F2'                  then     Result:= 113   else
 if  UpperCase(aVKstring) =     'VK_F20'                 then     Result:= 131   else
 if  UpperCase(aVKstring) =     'VK_F21'                 then     Result:= 132   else
 if  UpperCase(aVKstring) =     'VK_F22'                 then     Result:= 133   else
 if  UpperCase(aVKstring) =     'VK_F23'                 then     Result:= 134   else
 if  UpperCase(aVKstring) =     'VK_F24'                 then     Result:= 135   else
 if  UpperCase(aVKstring) =     'VK_F3'                  then     Result:= 114   else
 if  UpperCase(aVKstring) =     'VK_F4'                  then     Result:= 115   else
 if  UpperCase(aVKstring) =     'VK_F5'                  then     Result:= 116   else
 if  UpperCase(aVKstring) =     'VK_F6'                  then     Result:= 117   else
 if  UpperCase(aVKstring) =     'VK_F7'                  then     Result:= 118   else
 if  UpperCase(aVKstring) =     'VK_F8'                  then     Result:= 119   else
 if  UpperCase(aVKstring) =     'VK_F9'                  then     Result:= 120   else
 if  UpperCase(aVKstring) =     'VK_FINAL'               then     Result:= 24   else
 if  UpperCase(aVKstring) =     'VK_G'                   then     Result:= $47   else
 if  UpperCase(aVKstring) =     'VK_H'                   then     Result:= $48   else
 if  UpperCase(aVKstring) =     'VK_HANGUL'              then     Result:= 21   else
 if  UpperCase(aVKstring) =     'VK_HANJA'               then     Result:= 25   else
 if  UpperCase(aVKstring) =     'VK_HELP'                then     Result:= 47   else
 if  UpperCase(aVKstring) =     'VK_HIGHESTVALUE'        then     Result:= $FFFF   else
 if  UpperCase(aVKstring) =     'VK_HOME'                then     Result:= 36   else
 if  UpperCase(aVKstring) =     'VK_I'                   then     Result:= $49   else
 if  UpperCase(aVKstring) =     'VK_INSERT'              then     Result:= 45   else
 if  UpperCase(aVKstring) =     'VK_J'                   then     Result:= $4A   else
 if  UpperCase(aVKstring) =     'VK_JUNJA'               then     Result:= 23   else
 if  UpperCase(aVKstring) =     'VK_K'                   then     Result:= $4B   else
 if  UpperCase(aVKstring) =     'VK_KANA'                then     Result:= 21   else
 if  UpperCase(aVKstring) =     'VK_KANJI'               then     Result:= 25   else
 if  UpperCase(aVKstring) =     'VK_L'                   then     Result:= $4C   else
 if  UpperCase(aVKstring) =     'VK_LAUNCH_APP1'         then     Result:= $B6   else
 if  UpperCase(aVKstring) =     'VK_LAUNCH_APP2'         then     Result:= $B7   else
 if  UpperCase(aVKstring) =     'VK_LAUNCH_MAIL'         then     Result:= $B4   else
 if  UpperCase(aVKstring) =     'VK_LAUNCH_MEDIA_SELECT' then     Result:= $B5   else
 if  UpperCase(aVKstring) =     'VK_LBUTTON'             then     Result:= 1   else
 if  UpperCase(aVKstring) =     'VK_LCL_ALT'             then     Result:= 18   else
 if  UpperCase(aVKstring) =     'VK_LCL_AT'              then     Result:= $103   else
 if  UpperCase(aVKstring) =     'VK_LCL_BACKSLASH'       then     Result:= $DC   else
 if  UpperCase(aVKstring) =     'VK_LCL_CALL'            then     Result:= $101   else
 if  UpperCase(aVKstring) =     'VK_LCL_CAPSLOCK'        then     Result:= 20   else
 if  UpperCase(aVKstring) =     'VK_LCL_CLOSE_BRAKET'    then     Result:= $DD   else
 if  UpperCase(aVKstring) =     'VK_LCL_COMMA'           then     Result:= $BC   else
 if  UpperCase(aVKstring) =     'VK_LCL_ENDCALL'         then     Result:= $102   else
 if  UpperCase(aVKstring) =     'VK_LCL_EQUAL'           then     Result:= $BB   else
 if  UpperCase(aVKstring) =     'VK_LCL_LALT'            then     Result:= $A4   else
 if  UpperCase(aVKstring) =     'VK_LCL_MINUS'           then     Result:= $BD   else
 if  UpperCase(aVKstring) =     'VK_LCL_OPEN_BRAKET'     then     Result:= $DB   else
 if  UpperCase(aVKstring) =     'VK_LCL_POINT'           then     Result:= $BE   else
 if  UpperCase(aVKstring) =     'VK_LCL_POWER'           then     Result:= $100   else
 if  UpperCase(aVKstring) =     'VK_LCL_QUOTE'           then     Result:= $DE   else
 if  UpperCase(aVKstring) =     'VK_LCL_RALT'            then     Result:= $A5   else
 if  UpperCase(aVKstring) =     'VK_LCL_SEMI_COMMA'      then     Result:= $BA   else
 if  UpperCase(aVKstring) =     'VK_LCL_SLASH'           then     Result:= $BF   else
 if  UpperCase(aVKstring) =     'VK_LCL_TILDE'           then     Result:= $C0   else
 if  UpperCase(aVKstring) =     'VK_LCONTROL'            then     Result:= $A2   else
 if  UpperCase(aVKstring) =     'VK_LEFT'                then     Result:= 37   else
 if  UpperCase(aVKstring) =     'VK_LMENU'               then     Result:= $A4   else
 if  UpperCase(aVKstring) =     'VK_LSHIFT'              then     Result:= $A0   else
 if  UpperCase(aVKstring) =     'VK_LWIN'                then     Result:= $5B   else
 if  UpperCase(aVKstring) =     'VK_M'                   then     Result:= $4D   else
 if  UpperCase(aVKstring) =     'VK_MBUTTON'             then     Result:= 4   else
 if  UpperCase(aVKstring) =     'VK_MEDIA_NEXT_TRACK'    then     Result:= $B0   else
 if  UpperCase(aVKstring) =     'VK_MEDIA_PLAY_PAUSE'    then     Result:= $B3   else
 if  UpperCase(aVKstring) =     'VK_MEDIA_PREV_TRACK'    then     Result:= $B1   else
 if  UpperCase(aVKstring) =     'VK_MEDIA_STOP'          then     Result:= $B2   else
 if  UpperCase(aVKstring) =     'VK_MENU'                then     Result:= 18   else
 if  UpperCase(aVKstring) =     'VK_MODECHANGE'          then     Result:= 31   else
 if  UpperCase(aVKstring) =     'VK_MULTIPLY'            then     Result:= 106   else
 if  UpperCase(aVKstring) =     'VK_N'                   then     Result:= $4E   else
 if  UpperCase(aVKstring) =     'VK_NEXT'                then     Result:= 34   else
 if  UpperCase(aVKstring) =     'VK_NONAME'              then     Result:= $FC   else
 if  UpperCase(aVKstring) =     'VK_NONCONVERT'          then     Result:= 29   else
 if  UpperCase(aVKstring) =     'VK_NUMLOCK'             then     Result:= $90   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD0'             then     Result:= 96   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD1'             then     Result:= 97   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD2'             then     Result:= 98   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD3'             then     Result:= 99   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD4'             then     Result:= 100   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD5'             then     Result:= 101   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD6'             then     Result:= 102   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD7'             then     Result:= 103   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD8'             then     Result:= 104   else
 if  UpperCase(aVKstring) =     'VK_NUMPAD9'             then     Result:= 105   else
 if  UpperCase(aVKstring) =     'VK_O'                   then     Result:= $4F   else
 if  UpperCase(aVKstring) =     'VK_OEM_1'               then     Result:= $BA   else
 if  UpperCase(aVKstring) =     'VK_OEM_102'             then     Result:= $E2   else
 if  UpperCase(aVKstring) =     'VK_OEM_2'               then     Result:= $BF   else
 if  UpperCase(aVKstring) =     'VK_OEM_3'               then     Result:= $C0   else
 if  UpperCase(aVKstring) =     'VK_OEM_4'               then     Result:= $DB   else
 if  UpperCase(aVKstring) =     'VK_OEM_5'               then     Result:= $DC   else
 if  UpperCase(aVKstring) =     'VK_OEM_6'               then     Result:= $DD   else
 if  UpperCase(aVKstring) =     'VK_OEM_7'               then     Result:= $DE   else
 if  UpperCase(aVKstring) =     'VK_OEM_8'               then     Result:= $DF   else
 if  UpperCase(aVKstring) =     'VK_OEM_CLEAR'           then     Result:= $FE   else
 if  UpperCase(aVKstring) =     'VK_OEM_COMMA'           then     Result:= $BC   else
 if  UpperCase(aVKstring) =     'VK_OEM_MINUS'           then     Result:= $BD   else
 if  UpperCase(aVKstring) =     'VK_OEM_PERIOD'          then     Result:= $BE   else
 if  UpperCase(aVKstring) =     'VK_OEM_PLUS'            then     Result:= $BB   else
 if  UpperCase(aVKstring) =     'VK_P'                   then     Result:= $50   else
 if  UpperCase(aVKstring) =     'VK_PA1'                 then     Result:= $FD   else
 if  UpperCase(aVKstring) =     'VK_PAUSE'               then     Result:= 19   else
 if  UpperCase(aVKstring) =     'VK_PLAY'                then     Result:= $FA   else
 if  UpperCase(aVKstring) =     'VK_PRINT'               then     Result:= 42   else
 if  UpperCase(aVKstring) =     'VK_PRIOR'               then     Result:= 33   else
 if  UpperCase(aVKstring) =     'VK_PROCESSKEY'          then     Result:= $E7   else
 if  UpperCase(aVKstring) =     'VK_Q'                   then     Result:= $51   else
 if  UpperCase(aVKstring) =     'VK_R'                   then     Result:= $52   else
 if  UpperCase(aVKstring) =     'VK_RBUTTON'             then     Result:= 2   else
 if  UpperCase(aVKstring) =     'VK_RCONTROL'            then     Result:= $A3   else
 if  UpperCase(aVKstring) =     'VK_RETURN'              then     Result:= 13   else
 if  UpperCase(aVKstring) =     'VK_RIGHT'               then     Result:= 39   else
 if  UpperCase(aVKstring) =     'VK_RMENU'               then     Result:= $A5   else
 if  UpperCase(aVKstring) =     'VK_RSHIFT'              then     Result:= $A1   else
 if  UpperCase(aVKstring) =     'VK_RWIN'                then     Result:= $5C   else
 if  UpperCase(aVKstring) =     'VK_S'                   then     Result:= $53   else
 if  UpperCase(aVKstring) =     'VK_SCROLL'              then     Result:= $91   else
 if  UpperCase(aVKstring) =     'VK_SELECT'              then     Result:= 41   else
 if  UpperCase(aVKstring) =     'VK_SEPARATOR'           then     Result:= 108   else
 if  UpperCase(aVKstring) =     'VK_SHIFT'               then     Result:= 16   else
 if  UpperCase(aVKstring) =     'VK_SLEEP'               then     Result:= $5F   else
 if  UpperCase(aVKstring) =     'VK_SNAPSHOT'            then     Result:= 44   else
 if  UpperCase(aVKstring) =     'VK_SPACE'               then     Result:= 32   else
 if  UpperCase(aVKstring) =     'VK_SUBTRACT'            then     Result:= 109   else
 if  UpperCase(aVKstring) =     'VK_T'                   then     Result:= $54   else
 if  UpperCase(aVKstring) =     'VK_TAB'                 then     Result:= 9   else
 if  UpperCase(aVKstring) =     'VK_U'                   then     Result:= $55   else
 if  UpperCase(aVKstring) =     'VK_UNDEFINED'           then     Result:= $FF   else
 if  UpperCase(aVKstring) =     'VK_UNKNOWN'             then     Result:= 0   else
 if  UpperCase(aVKstring) =     'VK_UP'                  then     Result:= 38   else
 if  UpperCase(aVKstring) =     'VK_V'                   then     Result:= $56   else
 if  UpperCase(aVKstring) =     'VK_VOLUME_DOWN'         then     Result:= $AE   else
 if  UpperCase(aVKstring) =     'VK_VOLUME_MUTE'         then     Result:= $AD   else
 if  UpperCase(aVKstring) =     'VK_VOLUME_UP'           then     Result:= $AF   else
 if  UpperCase(aVKstring) =     'VK_W'                   then     Result:= $57   else
 if  UpperCase(aVKstring) =     'VK_X'                   then     Result:= $58   else
 if  UpperCase(aVKstring) =     'VK_XBUTTON1'            then     Result:= 5   else
 if  UpperCase(aVKstring) =     'VK_XBUTTON2'            then     Result:= 6   else
 if  UpperCase(aVKstring) =     'VK_Y'                   then     Result:= $59   else
 if  UpperCase(aVKstring) =     'VK_Z'                   then     Result:= $5A   else
 if  UpperCase(aVKstring) =     'VK_ZOOM'                then     Result:= $FB
    else Result:=0;
  
end;

end.
