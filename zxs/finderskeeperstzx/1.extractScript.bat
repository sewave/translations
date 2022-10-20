@echo off
set T_FILENAME="Finders Keepers.tzx"
set SCRIPTNAME="finderskeeperstzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
