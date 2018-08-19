@echo off
set T_FILENAME="James Pond - Underwater Agent (UE) [!].bin"
set SCRIPTNAME="jamespondsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
