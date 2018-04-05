@echo off
set T_FILENAME="TR_Hokuto no Ken (J) [T+ENG].sms"
set SCRIPTNAME="hokutonokensms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 137DC:08,137AC:08
pause
