Getting Toad for Oracle
-----------------------

Download [Toad for Oracle Freeware v12.1 (32-bit)](http://community-downloads.quest.com/toadsoft/ORACLE/TOADORACLE_FREEWARE_121_X86.msi)

To extract files from TOADORACLE_FREEWARE_121_X86.msi file at the command line, type:

<pre>
msiexec /a TOADORACLE_FREEWARE_121_X86.msi /qb TARGETDIR="%temp%\toad"
xcopy "%temp%\toad\program files\Quest Software\Toad for Oracle 12.1 Freeware" "drive\PortableApps\ToadPortable\App\Toad" /S
rmdir "%temp%\toad" /S
</pre>
