@echo off
set T_FILENAME="TR_Spacegun (E) [!].sms"
set SCRIPTNAME="spacegunsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
