@echo off
set T_FILENAME="Wolf Child (UE) [!].sms"
set SCRIPTNAME="wolfchildsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
