@echo off
set T_FILENAME="Ecco the Dolphin (U) [!].gg"
set SCRIPTNAME="eccogg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
