@echo off
set T_FILENAME="Phantom 2040 (U) [!].gg"
set SCRIPTNAME="phantom2040gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
