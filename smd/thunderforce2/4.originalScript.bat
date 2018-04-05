@echo off
set T_FILENAME="Thunder Force II (U) [!].gen"
set SCRIPTNAME="thunderforce2"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
