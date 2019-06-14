@echo off
set T_FILENAME="Spacegun (E) [!].sms"
set SCRIPTNAME="spacegunsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
