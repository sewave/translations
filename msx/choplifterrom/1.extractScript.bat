@echo off
set T_FILENAME="Choplifter (1985) (Sony) (J).rom"
set SCRIPTNAME="choplifterrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
