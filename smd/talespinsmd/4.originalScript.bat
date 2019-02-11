@echo off
set T_FILENAME="Tale Spin (UE) [!].bin"
set SCRIPTNAME="talespinsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
