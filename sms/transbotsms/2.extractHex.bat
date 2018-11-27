@echo off
set T_FILENAME="TR_Trans-Bot (UE) [!].sms"
set SCRIPTNAME="transbotsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7286:100
pause
