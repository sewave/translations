@echo off
set T_FILENAME="Lemmings (U) [!].gg"
set SCRIPTNAME="lemmingsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
