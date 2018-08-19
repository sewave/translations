@echo off
set T_FILENAME="TR_Shinobi (UE) [!].sms"
set SCRIPTNAME="shinobisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26273-26C72
pause
