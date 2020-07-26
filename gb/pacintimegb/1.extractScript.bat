@echo off
set T_FILENAME="Pac-In-Time (USA) (SGB Enhanced).gb"
set SCRIPTNAME="pacintimegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
