@echo off
set T_FILENAME="TR_Stop That Roach! (USA).gb"
set S_FILENAME="Stop That Roach! (USA).gb"
set SCRIPTNAME="stopthatroachgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
