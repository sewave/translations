@echo off
set T_FILENAME="TR_Super Godzilla (USA).sfc"
set SCRIPTNAME="supergodzillasfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38A00:260
pause
