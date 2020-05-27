@echo off
set T_FILENAME="Serpent (U) [!].gb"
set SCRIPTNAME="serpentgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
