@echo off
set T_FILENAME="Impossible Mission (E) [!].sms"
set SCRIPTNAME="impossiblemissionsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
