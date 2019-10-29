@echo off
set T_FILENAME="TR_Choplifter (UEB) [!].sms"
set SCRIPTNAME="chopliftersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
