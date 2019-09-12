@echo off
set T_FILENAME="Super C (U) [!].nes"
set SCRIPTNAME="supercnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
