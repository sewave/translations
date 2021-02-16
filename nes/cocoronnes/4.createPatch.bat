@echo off
set T_FILENAME="TR_Cocoron (Japan) [T+ENG].nes"
set S_FILENAME="Cocoron (Japan).nes"
set SCRIPTNAME="cocoronnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
