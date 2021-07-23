@echo off
set T_FILENAME="TR_Titan (Japan).pce"
set S_FILENAME="Titan (Japan).pce"
set SCRIPTNAME="titanpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
