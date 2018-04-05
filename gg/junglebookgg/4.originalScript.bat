@echo off
set T_FILENAME="Jungle Book, The (U) (Mar 1994) [!].gg"
set SCRIPTNAME="junglebookgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
