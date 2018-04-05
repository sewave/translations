@echo off
set T_FILENAME="Lion King, The (E) [!].gg"
set SCRIPTNAME="lionkinggg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
