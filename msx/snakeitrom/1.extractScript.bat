@echo off
set T_FILENAME="Snake-It (1986) (Hal) (J).rom"
set SCRIPTNAME="snakeitrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
