@echo off
set T_FILENAME="TR_David Crane's A Boy and His Blob - Trouble on Blobolonia (USA).nes"
set S_FILENAME="David Crane's A Boy and His Blob - Trouble on Blobolonia (USA).nes"
set SCRIPTNAME="aboyandhisblobnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
