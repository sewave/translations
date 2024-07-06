@echo off
set T_FILENAME="TR_Full Throttle 2.tzx"
set S_FILENAME="Full Throttle 2.tzx"
set SCRIPTNAME="fullthrottle2tzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
