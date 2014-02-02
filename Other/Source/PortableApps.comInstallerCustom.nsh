!macro CustomCodePostInstall
    
	CopyFiles /FILESONLY "$INSTDIR\App\DefaultData\ToadPortable.ini" "$INSTDIR\ToadPortable.ini"    
	Delete "$INSTDIR\App\DefaultData\ToadPortable.ini"
        
!macroend