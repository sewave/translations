@echo off
set T_FILENAME="Terminator, The (U) [!].bin"
set SCRIPTNAME="terminatorsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
