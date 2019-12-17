@echo off
set T_FILENAME="Binary Land (J) [!].nes"
set SCRIPTNAME="binarylandnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
