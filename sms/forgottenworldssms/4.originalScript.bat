@echo off
set T_FILENAME="Forgotten Worlds (E) [!].sms"
set SCRIPTNAME="forgottenworldssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
