@echo off
set T_FILENAME="Lion King, The (USA).sfc"
set SCRIPTNAME="lionkingthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
