@echo off
set T_FILENAME="TR_Pocket Bomberman (USA, Europe) (SGB Enhanced) (GB Compatible).gbc"
set S_FILENAME="Pocket Bomberman (USA, Europe) (SGB Enhanced) (GB Compatible).gbc"
set SCRIPTNAME="pocketbombermangbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
