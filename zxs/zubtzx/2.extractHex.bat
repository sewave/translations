@echo off
set T_FILENAME="TR_Zub.tzx"
set SCRIPTNAME="zubtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5D68:20,5DC8:8,5E28:30
pause
