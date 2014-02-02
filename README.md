Install Toad for Oracle Portable 
--------------------------------

Download and run ToadPortable_0.0.1_Development_test_1.paf.exe

#####Getting Toad for Oracle

Download [Toad for Oracle Freeware v12.1 (32-bit)](http://community-downloads.quest.com/toadsoft/ORACLE/TOADORACLE_FREEWARE_121_X86.msi)

To extract files from TOADORACLE_FREEWARE_121_X86.msi file at the command line, type:

<pre>
msiexec /a TOADORACLE_FREEWARE_121_X86.msi /qb TARGETDIR="%temp%\toad"
xcopy "%temp%\toad\program files\Quest Software\Toad for Oracle 12.1 Freeware" "drive\PortableApps\ToadPortable\App\Toad" /S
rmdir "%temp%\toad" /S
</pre>

#####Getting Oracle Instant Client Package - Basic

Download [Oracle Instant Client Package - Basic (32-bit)](http://www.oracle.com/technetwork/topics/winsoft-085727.html)

Extract files from instantclient-basic-nt-12.1.0.1.0.zip file to "drive\PortableApps\ToadPortable\App\instantclient_12_1"

#####Note

If you use Toad for Oracle Commercial Edition you have to edit [ToadPortable.ini](App/AppInfo/Launcher/ToadPortable.ini). Please have a look at the comments in the file for details.
