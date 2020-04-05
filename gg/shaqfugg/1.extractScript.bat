@echo off
set T_FILENAME="Shaq Fu (U) [!].gg"
set SCRIPTNAME="shaqfugg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
