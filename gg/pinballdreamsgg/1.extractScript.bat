@echo off
set T_FILENAME="Pinball Dreams (U) [!].gg"
set SCRIPTNAME="pinballdreamsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
