@echo off
set T_FILENAME="Champion Boxing (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="championboxingrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
