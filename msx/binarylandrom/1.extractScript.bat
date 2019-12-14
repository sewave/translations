@echo off
set T_FILENAME="Binary Land (1984)(Kuma Computers).rom"
set SCRIPTNAME="binarylandrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
