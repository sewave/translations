@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].smc"
set SCRIPTNAME="earthwormjimsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
