@echo off 
set T_FILENAME="TR_Fantasy Zone (UE) [!].sms"
set SCRIPTNAME="fantasyzonesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
