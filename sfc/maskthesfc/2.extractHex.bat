@echo off
set T_FILENAME="TR_Mask, The (USA).sfc"
set SCRIPTNAME="maskthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
