@echo off
set T_FILENAME="Rush'n Attack (USA).nes"
set SCRIPTNAME="rushnattacknes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
