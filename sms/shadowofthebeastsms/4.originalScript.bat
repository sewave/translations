@echo off
set T_FILENAME="Shadow of the Beast (E) [!].sms"
set SCRIPTNAME="shadowofthebeastsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
