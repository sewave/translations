@echo off
set T_FILENAME="TR_James Pond 3 - Operation Starfish (E).smc"
set SCRIPTNAME="jamespond3operationstarfishsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
