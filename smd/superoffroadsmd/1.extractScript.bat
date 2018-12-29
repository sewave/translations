@echo off
set T_FILENAME="Super Off Road (U) [!].gen"
set SCRIPTNAME="superoffroadsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
