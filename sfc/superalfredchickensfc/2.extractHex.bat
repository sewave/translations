@echo off
set T_FILENAME="TR_Super Alfred Chicken (USA).sfc"
set SCRIPTNAME="superalfredchickensfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
