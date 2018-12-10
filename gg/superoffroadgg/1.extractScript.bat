@echo off
set T_FILENAME="Super Off-Road (U).gg"
set SCRIPTNAME="superoffroadgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
