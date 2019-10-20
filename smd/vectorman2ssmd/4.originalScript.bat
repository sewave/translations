@echo off
set T_FILENAME="Vectorman 2 (U) [!].bin"
set SCRIPTNAME="vectorman2ssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
