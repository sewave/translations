@echo off
set T_FILENAME="Break In (1987) (Jaleco) (J).rom"
set SCRIPTNAME="breakinrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
