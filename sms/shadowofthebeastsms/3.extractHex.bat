@echo off
set T_FILENAME="TR_Shadow of the Beast (E) [!].sms"
set SCRIPTNAME="shadowofthebeastsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B7B3:50
pause
