@echo off
set T_FILENAME="Klax (E) [!].sms"
set SCRIPTNAME="klaxsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
