@echo off
set T_FILENAME="TR_Rise of the Robots (USA).sfc"
set SCRIPTNAME="riseoftherobotssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
