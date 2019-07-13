@echo off
set T_FILENAME="Jammit (U) [!].bin"
set SCRIPTNAME="jammitsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
