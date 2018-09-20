@echo off
set T_FILENAME="TR_Master of Darkness (UE) [!].sms"
set SCRIPTNAME="masterofdarknesssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
