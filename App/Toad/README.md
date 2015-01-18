Getting Toad for Oracle
-----------------------

Download [Toad for Oracle Freeware v12.6 (32-bit)](http://community-downloads.quest.com/toadsoft/ORACLE/Dell_Toad_for_Oracle_12.6_Freeware.msi)

To extract files from Dell_Toad_for_Oracle_12.6_Freeware.msi file at the command line, type:

<pre>
msiexec /a Dell_Toad_for_Oracle_12.6_Freeware.msi /qb TARGETDIR="%temp%\toad"
xcopy "%temp%\toad\program files\Dell\Toad for Oracle 12.6 Freeware" "drive\PortableApps\ToadPortable\App\Toad" /S
rmdir "%temp%\toad" /S
</pre>
