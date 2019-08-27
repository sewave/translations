@echo off
set T_FILENAME="James Pond 3 - Operation Starfish (UE) [!].gen"
set SCRIPTNAME="jamespond3operationstarfishsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
