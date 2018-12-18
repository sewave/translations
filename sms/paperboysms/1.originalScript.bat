@echo off
set T_FILENAME="Paperboy (U) [!].sms"
set SCRIPTNAME="paperboysms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
