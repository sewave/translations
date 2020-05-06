@echo off
set T_FILENAME="Satellite 7 (J) [!].sms"
set SCRIPTNAME="satellite7sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
