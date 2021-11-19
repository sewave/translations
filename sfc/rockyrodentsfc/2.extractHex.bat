@echo off
set T_FILENAME="TR_Rocky Rodent (USA).sfc"
set SCRIPTNAME="rockyrodentsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
