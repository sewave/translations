@echo off
set T_FILENAME="Jungle Book, The (U).smc"
set SCRIPTNAME="junglebooksfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
