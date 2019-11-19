@echo off
set T_FILENAME="Scion (1985) (Sony) (J).rom"
set SCRIPTNAME="scionrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
