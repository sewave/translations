@echo off
set T_FILENAME="Ecco the Dolphin (UE).sms"
set SCRIPTNAME="eccosms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
