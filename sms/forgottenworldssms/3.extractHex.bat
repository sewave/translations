@echo off
set T_FILENAME="TR_Forgotten Worlds (E) [!].sms"
set SCRIPTNAME="forgottenworldssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 200E0:160,228E0:80,280E0:80,29980:80,144E0:120,141A0:20
pause
