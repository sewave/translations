@echo off
set T_FILENAME="TR_Puzznic (Japan).pce"
set S_FILENAME="Puzznic (Japan).pce"
set SCRIPTNAME="puzznicpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
