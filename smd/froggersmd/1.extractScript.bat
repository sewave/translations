@echo off
set T_FILENAME="Frogger (U) [!].bin"
set SCRIPTNAME="froggersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
