@echo off
set T_FILENAME="TR_Superman (E) [!].sms"
set SCRIPTNAME="supermansms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
