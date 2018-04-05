@echo off
set T_FILENAME="Dragon - The Bruce Lee Story (U) [!].gg"
set SCRIPTNAME="dragonbrucegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
