@echo off
set T_FILENAME="TR_Wonder Momo (Japan) [T+ENG].pce"
set S_FILENAME="Wonder Momo (Japan).pce"
set SCRIPTNAME="wondermomopce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
