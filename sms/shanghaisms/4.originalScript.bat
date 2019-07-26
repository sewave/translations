@echo off
set T_FILENAME="Shanghai (UE) [!].sms"
set SCRIPTNAME="shanghaisms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
