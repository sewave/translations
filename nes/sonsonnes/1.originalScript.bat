@echo off
set T_FILENAME="Son Son (J) [!].nes"
set SCRIPTNAME="sonsonnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
