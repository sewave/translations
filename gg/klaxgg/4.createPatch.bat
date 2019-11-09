@echo off
set T_FILENAME="TR_Klax (USA, Europe).gg"
set S_FILENAME="Klax (USA, Europe).gg"
set SCRIPTNAME="klaxgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
