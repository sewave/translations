@echo off
set T_FILENAME="Balance (1984) (Hal) (J).rom"
set SCRIPTNAME="balancerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
