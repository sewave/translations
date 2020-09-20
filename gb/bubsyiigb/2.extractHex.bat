@echo off
set T_FILENAME="TR_Bubsy II (USA).gb"
set SCRIPTNAME="bubsyiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
