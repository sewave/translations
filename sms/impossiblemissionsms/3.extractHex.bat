@echo off
set T_FILENAME="TR_Impossible Mission (E) [!].sms"
set SCRIPTNAME="impossiblemissionsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
