@echo off
set T_FILENAME="Monopoly (U) [!].sms"
set SCRIPTNAME="monopolysms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
