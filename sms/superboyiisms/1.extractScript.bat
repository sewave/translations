@echo off
set T_FILENAME="Super Boy II (KR).sms"
set SCRIPTNAME="superboyiisms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
