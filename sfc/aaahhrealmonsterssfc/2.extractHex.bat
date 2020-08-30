@echo off
set T_FILENAME="TR_Aaahh!!! Real Monsters (USA).sfc"
set SCRIPTNAME="aaahhrealmonsterssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
