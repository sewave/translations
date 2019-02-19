@echo off
set T_FILENAME="TR_Columns (UE) [!].sms"
set SCRIPTNAME="columnssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A022:200
pause
