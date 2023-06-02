@echo off
set T_FILENAME="TR_No Escape (USA).sfc"
set SCRIPTNAME="noescapesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B97B2:40,1B9262:80
pause
