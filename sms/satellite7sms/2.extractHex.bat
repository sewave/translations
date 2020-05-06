@echo off
set T_FILENAME="TR_Satellite 7 (J) [!].sms"
set SCRIPTNAME="satellite7sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4A48:8,4A88:8,4AD0:8
pause
