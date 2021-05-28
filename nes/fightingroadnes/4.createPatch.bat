@echo off
set T_FILENAME="TR_Fighting Road (Japan) [T+ENG].nes"
set S_FILENAME="Fighting Road (Japan).nes"
set SCRIPTNAME="fightingroadnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
