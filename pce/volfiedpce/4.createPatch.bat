@echo off
set T_FILENAME="TR_Volfied (Japan).pce"
set S_FILENAME="Volfied (Japan).pce"
set SCRIPTNAME="volfiedpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
