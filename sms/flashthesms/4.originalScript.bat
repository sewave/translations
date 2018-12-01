@echo off
set T_FILENAME="Flash, The (E) [!].sms"
set SCRIPTNAME="flashthesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
