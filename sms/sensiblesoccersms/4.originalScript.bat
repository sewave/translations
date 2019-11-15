@echo off
set T_FILENAME="Sensible Soccer (E) [!].sms"
set SCRIPTNAME="sensiblesoccersms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
