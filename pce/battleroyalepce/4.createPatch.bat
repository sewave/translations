@echo off
set T_FILENAME="TR_Battle Royale (U).pce"
set S_FILENAME="Battle Royale (U).pce"
set SCRIPTNAME="battleroyalepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
