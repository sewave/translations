@echo off
set T_FILENAME="Cavemania.tzx"
set SCRIPTNAME="cavemaniatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
