@echo off
set T_FILENAME="TR_Motocross Champion (Japan) [T+ENG].nes"
set S_FILENAME="Motocross Champion (Japan).nes"
set SCRIPTNAME="motocrosschampionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
