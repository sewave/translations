@echo off
set T_FILENAME="Bonkers Wax Up! (UE) [!].sms"
set SCRIPTNAME="bonkerswaxupsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
