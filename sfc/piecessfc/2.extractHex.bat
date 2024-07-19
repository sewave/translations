@echo off
set T_FILENAME="TR_Pieces (USA).sfc"
set SCRIPTNAME="piecessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
