@echo off
set T_FILENAME="TR_Paperboy (U) [!].sms"
set SCRIPTNAME="paperboysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
