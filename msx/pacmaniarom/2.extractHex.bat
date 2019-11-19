@echo off
set T_FILENAME="TR_Pac-Mania (1989) (Namcot) (J).rom"
set SCRIPTNAME="pacmaniarom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
