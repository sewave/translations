@echo off
set T_FILENAME="Magical Chase (U) [!].pce"
set SCRIPTNAME="magicalchasepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
