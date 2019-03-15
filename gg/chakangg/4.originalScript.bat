@echo off
set T_FILENAME="Chakan (U) [!].gg"
set SCRIPTNAME="chakangg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
