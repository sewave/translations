@echo off
set T_FILENAME="Predator 2 (UE) [!].bin"
set SCRIPTNAME="predator2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
