@echo off
set T_FILENAME="Zero Wing (E) [c][!].bin"
set SCRIPTNAME="zerowingsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
