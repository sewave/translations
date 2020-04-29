@echo off
set T_FILENAME="Tick, The (U) [!].gen"
set SCRIPTNAME="tickthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
