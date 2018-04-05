@echo off
set T_FILENAME="TR_Strider II (UE) [!].sms"
set SCRIPTNAME="strider2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
