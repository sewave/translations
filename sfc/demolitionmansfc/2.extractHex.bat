@echo off
set T_FILENAME="TR_Demolition Man (USA).sfc"
set SCRIPTNAME="demolitionmansfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
