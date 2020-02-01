@echo off
set T_FILENAME="Baseball (U) [!].nes"
set SCRIPTNAME="baseballnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
