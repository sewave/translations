@echo off
set T_FILENAME="Lion King, The (W) [!].gen"
set SCRIPTNAME="lionkingthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
