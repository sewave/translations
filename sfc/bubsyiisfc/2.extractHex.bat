@echo off
set T_FILENAME="TR_Bubsy II (USA).sfc"
set SCRIPTNAME="bubsyiisfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
