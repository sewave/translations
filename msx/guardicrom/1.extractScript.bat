@echo off
set T_FILENAME="Guardic (1986) (Compile) (J).rom"
set SCRIPTNAME="guardicrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
