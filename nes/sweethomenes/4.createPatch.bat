@echo off
set T_FILENAME="TR_Sweet Home (Japan) [T+ENG].nes"
set S_FILENAME="Sweet Home (Japan).nes"
set SCRIPTNAME="sweethomenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
