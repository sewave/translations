@echo off
set T_FILENAME="Jungle Book, The (U) [!].gb"
set SCRIPTNAME="junglebookgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
