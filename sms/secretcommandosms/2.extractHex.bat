@echo off
set T_FILENAME="TR_Secret Commando (E) [!].sms"
set SCRIPTNAME="secretcommandosms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
