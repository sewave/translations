@echo off
set T_FILENAME="TR_Parodius (Japan) [T+ENG].rom"
set S_FILENAME="Parodius (Japan).rom"
set SCRIPTNAME="parodiusrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
