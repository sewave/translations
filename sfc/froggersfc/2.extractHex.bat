@echo off
set T_FILENAME="TR_Frogger (USA).sfc"
set SCRIPTNAME="froggersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 68B05:300
pause
