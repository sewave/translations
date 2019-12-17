@echo off
set T_FILENAME="Blockade Runner (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="blockaderunnerrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
