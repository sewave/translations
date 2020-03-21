@echo off
set T_FILENAME="Battle Cross (1984) (Sony) (J).rom"
set SCRIPTNAME="battlecrossrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
