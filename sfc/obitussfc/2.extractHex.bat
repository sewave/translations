@echo off
set T_FILENAME="TR_Obitus (USA).sfc"
set SCRIPTNAME="obitussfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
