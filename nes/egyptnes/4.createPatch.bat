@echo off
set T_FILENAME="TR_Egypt (Japan) [T+ENG].nes"
set S_FILENAME="Egypt (Japan).nes"
set SCRIPTNAME="egyptnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
