@echo off
set T_FILENAME="TR_Woody Pop (J) [!].sms"
set SCRIPTNAME="woodypopsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
