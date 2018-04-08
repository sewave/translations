@echo off
set T_FILENAME="TR_Daze Before Christmas (E).smc"
set SCRIPTNAME="dazebeforechristmassfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
