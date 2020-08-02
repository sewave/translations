@echo off
set T_FILENAME="TR_Pocket Bomberman (U) [S].gb"
set S_FILENAME="Pocket Bomberman (U) [S].gb"
set SCRIPTNAME="pocketbombermangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
