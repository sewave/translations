@echo off
set T_FILENAME="Generations Lost (UE) [!].bin"
set SCRIPTNAME="generationslostsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
