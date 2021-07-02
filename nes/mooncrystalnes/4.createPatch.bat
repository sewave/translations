@echo off
set T_FILENAME="TR_Moon Crystal (Japan) [T+ENG].nes"
set S_FILENAME="Moon Crystal (Japan).nes"
set SCRIPTNAME="mooncrystalnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
