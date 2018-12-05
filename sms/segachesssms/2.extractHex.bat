@echo off
set T_FILENAME="TR_Sega Chess (EB) [!].sms"
set SCRIPTNAME="segachesssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
