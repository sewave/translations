@echo off
set T_FILENAME="Blues Brothers, The (U) [!].nes"
set SCRIPTNAME="bluesbrothersthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
