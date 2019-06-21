@echo off
set T_FILENAME="Woody Pop (J) [!].sms"
set SCRIPTNAME="woodypopsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
