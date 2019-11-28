@echo off
set T_FILENAME="Knightmare - Majou Densetsu (Japan).rom"
set SCRIPTNAME="knightmaremajoudensetsurom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
