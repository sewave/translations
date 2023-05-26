@echo off
set T_FILENAME="Ganbare Gorby! (Japan).gg"
set SCRIPTNAME="ganbaregorbygg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
