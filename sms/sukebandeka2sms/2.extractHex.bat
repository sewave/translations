@echo off
set T_FILENAME="TR_Sukeban Deka 2 (J) [T+ENG].sms"
set SCRIPTNAME="sukebandeka2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B2C9:10,9B8B:10
pause
