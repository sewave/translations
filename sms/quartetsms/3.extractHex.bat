@echo off
set T_FILENAME="TR_Quartet (UE) [!].sms"
set SCRIPTNAME="quartetsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
