@echo off
set T_FILENAME="Gargoyles (U) [!].bin"
set SCRIPTNAME="gargoyles"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
