@echo off
set T_FILENAME="Superman (E) [!].sms"
set SCRIPTNAME="supermansms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
