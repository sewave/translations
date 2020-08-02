@echo off
set T_FILENAME="TR_Power Racer (USA).gb"
set S_FILENAME="Power Racer (USA).gb"
set SCRIPTNAME="powerracergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
