@echo off
set T_FILENAME="TR_Pac-Man (1984) (Namcot) (J).rom"
set SCRIPTNAME="pacmanrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2318:08
pause
