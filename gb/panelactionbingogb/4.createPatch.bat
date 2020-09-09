@echo off
set T_FILENAME="TR_Panel Action Bingo (USA).gb"
set S_FILENAME="Panel Action Bingo (USA).gb"
set SCRIPTNAME="panelactionbingogb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
