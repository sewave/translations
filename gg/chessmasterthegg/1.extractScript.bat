@echo off
set T_FILENAME="Chessmaster, The (U) [!].gg"
set SCRIPTNAME="chessmasterthegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
