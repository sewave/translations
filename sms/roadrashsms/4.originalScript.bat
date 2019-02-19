@echo off
set T_FILENAME="Road Rash (E) [!].sms"
set SCRIPTNAME="roadrashsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
