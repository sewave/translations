@echo off
set T_FILENAME="TR_Zipang (Japan).pce"
set S_FILENAME="Zipang (Japan).pce"
set SCRIPTNAME="zipangpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
