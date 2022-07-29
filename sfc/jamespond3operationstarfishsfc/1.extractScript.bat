@echo off
set T_FILENAME="James Pond 3 - Operation Starfish (E).smc"
set SCRIPTNAME="jamespond3operationstarfishsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
