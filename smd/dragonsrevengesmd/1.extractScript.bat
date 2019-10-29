@echo off
set T_FILENAME="Dragon's Revenge (UE) [!].bin"
set SCRIPTNAME="dragonsrevengesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
