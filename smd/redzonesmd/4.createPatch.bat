@echo off
set T_FILENAME="TR_Red Zone (USA, Europe).md"
set S_FILENAME="Red Zone (USA, Europe).md"
set SCRIPTNAME="redzonesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
