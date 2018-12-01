@echo off
set T_FILENAME="TR_Action Fighter (UE) [!].sms"
set SCRIPTNAME="actionfightersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
