@echo off
set T_FILENAME="Pac-In-Time (Prototype) [!].gg"
set SCRIPTNAME="pacintimegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
