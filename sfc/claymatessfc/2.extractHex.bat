@echo off
set T_FILENAME="TR_Claymates (USA).sfc"
set SCRIPTNAME="claymatessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
