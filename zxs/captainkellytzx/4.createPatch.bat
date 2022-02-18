@echo off
set T_FILENAME="TR_Captain Kelly.tzx"
set S_FILENAME="Captain Kelly.tzx"
set SCRIPTNAME="captainkellytzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
