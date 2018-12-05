@echo off
set T_FILENAME="Junction (JU) [!].bin"
set SCRIPTNAME="junctionsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
