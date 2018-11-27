@echo off
set T_FILENAME="Rocky (World).sms"
set SCRIPTNAME="rockysms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
