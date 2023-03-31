@echo off
set T_FILENAME="TR_Voidrunner.tzx"
set SCRIPTNAME="voidrunnertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
