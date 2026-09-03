@echo off
set T_FILENAME="TR_Fray - Shugyou Hen (Japan) [T+ENG].gg"
set S_FILENAME="Fray - Shugyou Hen (Japan).gg"
set SCRIPTNAME="frayshugyouhengg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
