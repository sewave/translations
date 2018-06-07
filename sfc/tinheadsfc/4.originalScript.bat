@echo off
set T_FILENAME="Tinhead (E) (Beta).smc"
set SCRIPTNAME="tinheadsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
