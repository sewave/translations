@echo off
set T_FILENAME="Shikinjou (J).gg"
set SCRIPTNAME="shikinjougg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
