@echo off
set T_FILENAME="TR_Dead Angle (UE) [!].sms"
set SCRIPTNAME="deadanglesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
