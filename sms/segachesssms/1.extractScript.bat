@echo off
set T_FILENAME="Sega Chess (EB) [!].sms"
set SCRIPTNAME="segachesssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
