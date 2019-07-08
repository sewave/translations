@echo off
set T_FILENAME="Fester's Quest (U) [!].nes"
set SCRIPTNAME="festersquestnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
