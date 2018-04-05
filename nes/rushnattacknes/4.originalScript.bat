@echo off
set T_FILENAME="Rush'n Attack (U) [!].nes"
set SCRIPTNAME="rushnattacknes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
