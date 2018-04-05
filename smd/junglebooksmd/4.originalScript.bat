@echo off
set T_FILENAME="Jungle Book, The (U) [!].bin"
set SCRIPTNAME="junglebooksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
