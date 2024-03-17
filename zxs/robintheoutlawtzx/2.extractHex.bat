@echo off
set T_FILENAME="TR_Robin The Outlaw.tzx"
set SCRIPTNAME="robintheoutlawtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
