@echo off
set T_FILENAME="Front Line (1984) (Taito) (J).rom"
set SCRIPTNAME="frontlinerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
