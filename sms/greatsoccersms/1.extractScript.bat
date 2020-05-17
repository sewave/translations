@echo off
set T_FILENAME="Great Soccer (E) [!].sms"
set SCRIPTNAME="greatsoccersms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
