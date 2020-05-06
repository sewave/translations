@echo off
set T_FILENAME="TR_Global Defense (UE) [!].sms"
set SCRIPTNAME="globaldefensesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
