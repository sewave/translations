@echo off
set T_FILENAME="TR_Earthworm Jim 2 (USA).sfc"
set SCRIPTNAME="earthwormjim2sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
