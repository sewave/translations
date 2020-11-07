@echo off
set T_FILENAME="Pac-In-Time (USA).sfc"
set SCRIPTNAME="pacintimesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
