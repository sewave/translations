@echo off
set T_FILENAME="TR_Time Zone (Japan) [T+ENG].nes"
set S_FILENAME="Time Zone (Japan).nes"
set SCRIPTNAME="timezonenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
