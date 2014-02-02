; StrReplace
; Replaces all ocurrences of a given needle within a haystack with another string
; Written by dandaman32
 
Var STR_REPLACE_VAR_0
Var STR_REPLACE_VAR_1
Var STR_REPLACE_VAR_2
Var STR_REPLACE_VAR_3
Var STR_REPLACE_VAR_4
Var STR_REPLACE_VAR_5
Var STR_REPLACE_VAR_6
Var STR_REPLACE_VAR_7
Var STR_REPLACE_VAR_8
 
Function StrReplace
  Exch $STR_REPLACE_VAR_2
  Exch 1
  Exch $STR_REPLACE_VAR_1
  Exch 2
  Exch $STR_REPLACE_VAR_0
    StrCpy $STR_REPLACE_VAR_3 -1
    StrLen $STR_REPLACE_VAR_4 $STR_REPLACE_VAR_1
    StrLen $STR_REPLACE_VAR_6 $STR_REPLACE_VAR_0
    loop:
      IntOp $STR_REPLACE_VAR_3 $STR_REPLACE_VAR_3 + 1
      StrCpy $STR_REPLACE_VAR_5 $STR_REPLACE_VAR_0 $STR_REPLACE_VAR_4 $STR_REPLACE_VAR_3
      StrCmp $STR_REPLACE_VAR_5 $STR_REPLACE_VAR_1 found
      StrCmp $STR_REPLACE_VAR_3 $STR_REPLACE_VAR_6 done
      Goto loop
    found:
      StrCpy $STR_REPLACE_VAR_5 $STR_REPLACE_VAR_0 $STR_REPLACE_VAR_3
      IntOp $STR_REPLACE_VAR_8 $STR_REPLACE_VAR_3 + $STR_REPLACE_VAR_4
      StrCpy $STR_REPLACE_VAR_7 $STR_REPLACE_VAR_0 "" $STR_REPLACE_VAR_8
      StrCpy $STR_REPLACE_VAR_0 $STR_REPLACE_VAR_5$STR_REPLACE_VAR_2$STR_REPLACE_VAR_7
      StrLen $STR_REPLACE_VAR_6 $STR_REPLACE_VAR_0
      Goto loop
    done:
  Pop $STR_REPLACE_VAR_1 ; Prevent "invalid opcode" errors and keep the
  Pop $STR_REPLACE_VAR_1 ; stack as it was before the function was called
  Exch $STR_REPLACE_VAR_0
FunctionEnd
 
!macro _strReplaceConstructor OUT NEEDLE NEEDLE2 HAYSTACK
  Push "${HAYSTACK}"
  Push "${NEEDLE}"
  Push "${NEEDLE2}"
  Call StrReplace
  Pop "${OUT}"
!macroend
 
!define StrReplace '!insertmacro "_strReplaceConstructor"'

${SegmentFile}

Var ToadMajorRelease
Var ToadRelease
Var LastAppData

${SegmentPre}	
	
	ClearErrors
	
	; Custom Code for using ToadMajorRelease in launcher.ini[Environment] - use %ToadMajorRelease%
	${ReadUserConfig} $ToadMajorRelease ToadMajorRelease
	StrCpy $0 $ToadMajorRelease
	${SetEnvironmentVariable} ToadMajorRelease $0
	${DebugMsg} "Toad major release is $ToadMajorRelease"
	
	; Custom Code for using ToadRelease in launcher.ini[Environment] - use %ToadRelease% 
	${ReadUserConfig} $ToadRelease ToadRelease
	StrCpy $0 $ToadRelease
	${SetEnvironmentVariable} ToadRelease $0
	${DebugMsg} "Toad release is $ToadRelease"
	
	; Custom Code for using last APPDATA in launcher.ini[Environment] - use %LastAppData%  
	ReadINIStr $LastAppData $EXEDIR\Data\settings\$AppIDSettings.ini $AppIDSettings LastAppData
	StrCpy $0 $LastAppData
	${SetEnvironmentVariable} LastAppData $0
	${DebugMsg} "Toad Portable LastAppData is $LastAppData"
	
	; Custom Code for using last APPDATA with double backslash in launcher.ini[Environment] - use %LastAppData:DoubleBackslash%
	${StrReplace} $0 '\' '??' $LastAppData
	${StrReplace} $1 '??' '\\' $0
	${SetEnvironmentVariable} LastAppData:DoubleBackslash $1
	${DebugMsg} "Toad Portable LastAppData:DoubleBackslash is $1"
	
!macroend
