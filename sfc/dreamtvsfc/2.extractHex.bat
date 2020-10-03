@echo off
set T_FILENAME="TR_Dream T.V. (USA).sfc"
set SCRIPTNAME="dreamtvsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
