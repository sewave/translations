@echo off
set T_FILENAME="Star Force (1985) (Hudson) (J).rom"
set SCRIPTNAME="starforcerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
