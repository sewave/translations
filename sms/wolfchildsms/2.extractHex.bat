@echo off
set T_FILENAME="TR_Wolf Child (UE) [!].sms"
set SCRIPTNAME="wolfchildsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
