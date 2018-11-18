@echo off
set T_FILENAME="Power Strike 2 (E) [!].sms"
set SCRIPTNAME="powerstrike2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
