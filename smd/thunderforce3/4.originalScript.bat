@echo off
set T_FILENAME="Thunder Force III (JU) [!].gen"
set SCRIPTNAME="thunderforce3"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
