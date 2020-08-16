@echo off
set T_FILENAME="TR_Gradius III (USA).sfc"
set SCRIPTNAME="gradiusiiisfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
