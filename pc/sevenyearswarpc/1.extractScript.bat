@echo off
set T_FILENAME="language.gtf"
set SCRIPTNAME="sevenyearswarpc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
