@echo off
set T_FILENAME="TR_Stargate (USA).sfc"
set SCRIPTNAME="stargatesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
